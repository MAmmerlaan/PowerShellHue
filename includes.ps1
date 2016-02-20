$bridgeIP 				= "192.168.178.12"
$username 				= "d84f5e9696ffd7394edb2d22fa3cfb"
$ApiUrl 				= "http://$BridgeIP/api/$username/lights/1"
$logbasedirectory 		= "\logs\"
$loopwaitcounterSec		= 5
$colortransitiontime	= 36
#Check README on what the variables mean.

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

	#write-host (get-date).Hour
	#write-host (get-date).Minute
	#write-host (get-date).DayOfYear

	$today = Get-Date -Date (get-date)
	$today = Get-Date -Date '1-2'
	#Use this line to simulate other dates then today. dd.mm format.
	
	$latest_sunset = Get-Date -Date '9-12'
	$earliest_sunset = Get-Date -Date '24-6'

	if ((($today).DayOfYear) -le ($earliest_sunset.DayOfYear))
	{
		#write-host 'its between 1 jan and 24th june'
		Log $('its between 1 jan and 24th june')
		$calculatedSunSet = [DateTime]::Today.AddHours(16).Addminutes(38).AddMinutes((($today).DayOfYear)*2).ToString("HH:mm")
		
	}
	elseif((($today).DayOfYear) -gt ($earliest_sunset.DayOfYear) -and (($today).DayOfYear) -le ($latest_sunset.DayOfYear))
	{
		Log $('its between 24th june and 12 december')
		write-host 'its between 24th june and 12 december' (-1* ((($today).DayOfYear) - $earliest_sunset.DayOfYear))
		
		$calculatedSunSet = [DateTime]::Today.AddHours(22).Addminutes(04).AddMinutes(-2*((($today).DayOfYear) - $earliest_sunset.DayOfYear)).ToString("HH:mm")
		
	}
	elseif ((($today).DayOfYear) -gt ($latest_sunset.DayOfYear) )
	{
		Log $('its between 12 december and the end of the year')
		#write-host 
		$calculatedSunSet = [DateTime]::Today.AddHours(16).Addminutes(28).AddMinutes((($today).DayOfYear) - $latest_sunset.DayOfYear).ToString("HH:mm")
		
	}
	
	write-host $calculatedSunSet
	
	#So we now know the sunset time, lets compare it to the current time.
	if ($calculatedSunSet -lt (Get-Date -UFormat %R))
	{
		#write-host "$calculatedSunSet is less then current time. We shall engage the Philips Hue"
		#write-host "$calculatedSunSet is less then current time. We shall engage the Philips Hue"
		Log $("$calculatedSunSet is less then current time. We shall engage the Philips Hue")
		[bool] $TurnOnHueBasedonTime = 1
		
	}
	else
	{
		#write-host "Current Time is before $calculatedSunSet. We have to wait before the sun sets."
		#write-host ("Current Time is before $calculatedSunSet. We have to wait before the sun sets.")
		Log $("Current Time is before $calculatedSunSet. We have to wait before the sun sets.")
		[bool] $TurnOnHueBasedonTime = 0
	}
	
	return $TurnOnHueBasedonTime


}

function EngageHue
{

	$bri = (Get-Random -Maximum 255 -Minimum 10)
	$sat = (Get-Random -Maximum 255 -Minimum 1)
	$hue = (Get-Random -Maximum 65500 -Minimum 1)

$Input = @"
{
"on":true, "sat":$sat, "bri":$bri,"hue":$hue,"transitiontime":$colortransitiontime
}
"@
Invoke-RestMethod -Method Put -Uri $ApiUrl"/state" -Body $Input
Log $("Turned the Hue on with params :  bri : $bri , sat = $sat, hue : $hue, transistiontime : ($colortransitiontime/10)")
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