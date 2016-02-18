$bridgeIP 			= "192.168.178.12"
$username 			= "d84f5e9696ffd7394edb2d22fa3cfb"
$ApiUrl 			= "http://$BridgeIP/api/$username/lights/1"
$logbasedirectory 	= "\logs\"
$loopwaitcounter 	= 1

function CheckCurrentState 
{
    $result = Invoke-RestMethod -Uri $ApiUrl 
    
    if ($result.state -match 'on=False') 
    {
        write-host 'Light is OFF'
		Log $("Light is OFF.")
		$currentState = 0
    }
    else
    {
        write-host 'Light is ON'
		Log $("Light is ON.")
		$currentState = 1
		
    }
	return $currentState
}

function Log 
{
	    
	$datetime=(Get-Date -format "yyyy-MM-d HH:mm.ss")
	$date=(Get-Date -format "yyyy-MM-d")
	$message = $datetime + ' - ' + $args[0]
	
	add-content "$PSScriptRoot\logs\$date.log" $message
	#write-host "$PSScriptRoot\logs\$date.log" $message
}

function checkSunSet
{
	if ((($today).DayOfYear) -le ($earliest_sunset.DayOfYear))
	{

		$calculatedSunSet = [DateTime]::Today.AddHours(16).Addminutes(38).AddMinutes((($today).DayOfYear )).ToString("HH:mm")

		if ($calculatedSunSet -lt (Get-Date -UFormat %R))
		{
			#write-host "$calculatedSunSet is less then current time. We shall engage the Philips Hue"
			Log $("$calculatedSunSet is less then current time. We shall engage the Philips Hue")
			[bool] $engageHue = 1
			
		}
		else
		{
			#write-host "Current Time is before $calculatedSunSet. We have to wait before the sun sets."
			Log $("Current Time is before $calculatedSunSet. We have to wait before the sun sets.")
			[bool] $engageHue = 0
		}

	}
	elseif((($today).DayOfYear) -gt ($earliest_sunset.DayOfYear) -and (($today).DayOfYear) -le ($latest_sunset.DayOfYear))
	{
		write-host 'its between 24th june and 12 december'

	}
	elseif ((($today).DayOfYear) -gt ($latest_sunset.DayOfYear) )
	{
		write-host 'its between 12 december and the end of the year'

	}
	return $engageHue


}

function EngageHue
{

$bri = (Get-Random -Maximum 255 -Minimum 50)
$sat = (Get-Random -Maximum 255 -Minimum 1)
$hue = (Get-Random -Maximum 65500 -Minimum 1)

$Input = @"
{
"on":true, "sat":$sat, "bri":$bri,"hue":$hue
}
"@
Invoke-RestMethod -Method Put -Uri $ApiUrl"/state" -Body $Input
Log $("Turned the Hue on with params :  bri : $bri , sat = $sat, hue : $hue")
}

function ShutdownHue
{
$Input = @"
{
"on":false
}
"@
Invoke-RestMethod -Method Put -Uri $ApiUrl"/state" -Body $Input
Log $("Turned the Hue off.")
}