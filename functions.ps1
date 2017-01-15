function ConnectMySQL([string]$user,[string]$pass,[string]$MySQLHost,[string]$database) {
 
  # Load MySQL .NET Connector Objects
  [void][system.reflection.Assembly]::LoadWithPartialName("MySql.Data")
 
  # Open Connection
  $connStr = "server=" + $MySQLHost + ";port=3306;uid=" + $user + ";pwd=" + $pass + ";database="+$database+";Pooling=FALSE"
  $conn = New-Object MySql.Data.MySqlClient.MySqlConnection($connStr)
  $conn.Open()
  $cmd = New-Object MySql.Data.MySqlClient.MySqlCommand("USE $database", $conn)
  return $conn
 
}

function ExecSQLQuery($conn, [string]$query) {
 
  $command = $conn.CreateCommand()
  $command.CommandText = $query
  $RowsInserted = $command.ExecuteNonQuery()
  $command.Dispose()
  return $RowsInserted
}

Function PingPhone([string] $name, [string] $phoneip){
    RunQuery  "log"  "Testen $name met ip $phoneip ."
    
     
	if (Test-Connection -ComputerName $phoneip -Count 2 -ErrorAction SilentlyContinue){
		    
        $result = "Device $name with IP $phoneip is online"
        write-host "Device $name with IP $phoneip is online"
        RunQuery  "log"  "Device $name with IP $phoneip is online"

        $script:phonefound = $script:phonefound + 1
        write-host "script:phonefound is set to $script:phonefound "

        RunQuery  "log"  "Setting variable script:waittime to $waittimelong"
        $script:waittime = $waittimelong
        RunQuery("")
          
	}
    else
    {
        $script:waittime = $waittimeshort
        $script:phonefound = $script:phonefound  + 0
        RunQuery  "log"  "Device $name with IP $phoneip is offline"
	}
    

}

Function DetectPhone(){

    $script:phonefound = 0
    write-host "setting script:phonefound to $script:phonefound"
    
    foreach($value in $devices)
    { 
        
        Clear-Variable -Name name -erroraction SilentlyContinue
        $name = $value[0]
        #write-host "Dvice name =" $value[0]

        Clear-Variable -Name ip -erroraction SilentlyContinue
        $phoneip = $value[1]
        #write-host "Device IP =" $value[1]

        Clear-Variable -Name name -erroraction SilentlyContinue

        PingPhone $value[0] $value[1]
        RunQuery  "log"  "Checking device $value[0] with IP $value[1]."



    }


}

Function RunQuery([string] $query, [string] $message){
    $conn = ConnectMySQL $user $pass $MySQLHost $database
    #write-host $query
    switch($query)
    {
        default {$query = "INSERT INTO $databasetable (`message`) VALUES ('$result, waiting $waittime seconds');"}
        "select" 
            {
                $a = Get-Date;
                $day = $a.Day;
                $month =  $a.Month;
                $query = "select * from suntimes where DATE_FORMAT(`date`, '%c-%e') = '$month-$day';"
             }
        "log" 
            {
                $query = "INSERT INTO log (`level`,`message`) VALUES ('INFO','$message');"
            }
    }
    
    write-host $query

    $Rows = ExecSQLQuery $conn $query

    switch($query)
    {
        
        "select" {write-host $Rows}
    }
}

Function CheckSolarTimes(){


$query = "use $database; SELECT * from suntimes where DATE_FORMAT(`date`,'%c-%e') =  DATE_FORMAT(NOW(),'%c-%e') limit 1;"

$ConnectionString = "server=" + $MySQLHost + ";port=3306;uid=" +  $user + ";pwd=" + $pass + ";database="+$database

Try {
  [void][System.Reflection.Assembly]::LoadWithPartialName("MySql.Data")
  $Connection = New-Object MySql.Data.MySqlClient.MySqlConnection
  $Connection.ConnectionString = $ConnectionString
  $Connection.Open()

  $Command = New-Object MySql.Data.MySqlClient.MySqlCommand($Query, $Connection)
  $DataAdapter = New-Object MySql.Data.MySqlClient.MySqlDataAdapter($Command)

  $DataSet = New-Object System.Data.DataSet
  $RecordCount = $dataAdapter.Fill($dataSet, "data")
  $DataSet.Tables[0]

  $script:sunup = $DataSet.Tables[0].sun_up
  $script:sundown = $DataSet.Tables[0].sun_down
  
  }

Catch {
  Write-Host "ERROR : Unable to run query : $query `n$Error[0]"
 }

Finally {
  $Connection.Close()
  }

  $solartime = "" 

if ((Get-Date -UFormat %R)  -gt $sunup -and  (Get-Date -UFormat %R)  -lt $sundown)
{
	write-host "Current time is after $sunup but before $sundown. It's daytime with sunlight."
    $script:solartime = "daytime" 
    RunQuery  "log"  "Current time is after $sunup but before $sundown. Its daytime with sunlight."
		
}
elseif ((Get-Date -UFormat %R)  -lt $sunup )
{
	
	write-host "Current time is before $sunup . The sun has not come up yet."
    $script:solartime = "morning" 
    RunQuery  "log"  "Current time is before $sunup . The sun has not come up yet."
	
}
elseif ((Get-Date -UFormat %R)  -gt $sundown )
{
	
	write-host "Current time is after $sundown . The sun has gone down.."
    $script:solartime = "evening" 
    RunQuery  "log"  "Current time is after $sundown . The sun has gone down.."
	
}
else
{
     RunQuery  "log"  "ERROR : failure in detecting daytime/evening/morning, fell into last ELSE block..."
	 $script:solartime = "evening" 
}





}

Function CheckCurrentState {
    write-host "$ApiUrl/1/"
    $result =  (Invoke-webrequest -URI "$ApiUrl/1/").Content | out-string
    write-host $result


if ($result -like '*`"on`":true*') 
    {
        write-host 'Light is ON'
		#Log $("Result is $result.")
		#Log $("Light is ON.")
		$script:currentState = 1
    }
    else
    {
        write-host 'Light is OFF'
		#Log $("Light is OFF.")
		$script:currentState = 0
		
    }
	return $script:currentState
}

Function EngageHue{

#setting the max and minimum brightness
$bri = (Get-Random -Minimum 150 -Maximum 254 )
#setting colour saturation.
$sat = (Get-Random -Minimum 1 -Maximum 255)
#Hue can go from 0 to 65000, I upped the minimum, and lowered the maximum to prevent the colour red from showing. This colour lid up my house like a whorehouse.
$hue = (Get-Random -Minimum 1500 -Maximum 56000)
	
#setting the waittime to 'hold' a color. The minimum is for example 600 (ten minutes), and max 1800/ 30 minutes.
$script:loopwaitcounterSec = (Get-Random -Maximum 1000 -Minimum 600)
#$script:loopwaitcounterSec = 30

#setting the time, in tenths of seconds, to take to 'swap' a colour. Setting this to zero make the change instant, but not very subtle.
$colortransitiontime = $colortransitiontime/10
#$colortransitiontime = 0

#input is the variable we load up with the colourdata.
$Input = @"
{
"on":true, "sat":$sat, "bri":$bri,"hue":$hue,"transitiontime":$colortransitiontime
}
"@

foreach($huelight in $huelights)
{
    $light = $huelight[0]
    Invoke-RestMethod -Method Put -Uri "$ApiUrl/$light/state" -Body $Input

}
RunQuery  "log"  "Swapping HUE color. With params : $ApiUrl/$light/state -Body $Input"

$script:engagedHue = 1

#Log $("Turned the Hue on with params :  bri : $bri , sat = $sat, hue : $hue, transistiontime : ($colortransitiontime/10)")

}

Function ShutdownHue {
$Input = @"
{
"on":false
}
"@
foreach($huelight in $huelights)
{
    $light = $huelight[0]
    Invoke-RestMethod -Method Put -Uri "$ApiUrl/$light/state" -Body $Input

}
RunQuery  "log"  "Shutting down all HUE lights."

}

Register-EngineEvent PowerShell.Exiting –Action {
    . “.\variables.ps1” 
    . “.\functions.ps1”  
    RunQuery  "log"  "EXIT event trigged, shutting down all Hue lights."
    ShutdownHue 
}