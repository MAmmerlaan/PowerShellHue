#lets start working from current dir..
."$PSScriptRoot\includes.ps1"

#write-host (get-date).Hour
#write-host (get-date).Minute
#write-host (get-date).DayOfYear

$today = Get-Date -Date (get-date)

$latest_sunset = Get-Date -Date '9-12'
$earliest_sunset = Get-Date -Date '24-6'

#write-host $latest_sunset.DayOfYear
#write-host $earliest_sunset.DayOfYear

$difference = New-TimeSpan -Start $earliest_sunset -End $latest_sunset
#write-host $difference

#sunset 1st january = 16:38hrs
#sunset 24st june = 22:04hrs
#sunset 

$CurrentState = CheckCurrentState
#write-host $($currentState)
#Log $('Current state of hue light is : ' + $result)
$result = checkSunSet


write-host $CurrentState
do
{
	
	Log $("Do while loop :  Current state is OFF")
	$CurrentState = CheckCurrentState
	$engageHue = checkSunSet
	
	if($engageHue)
	{
		write-host "checkSunSet is true and the hue is turned off. time to turn it on.."
		EngageHue
	}
	else
	{
		write-host "Hue is off, and the sun hasn't set."
	}
	Sleep -s $loopwaitcounter
	
}
while($CurrentState -eq 0)

do
{
	Log $("Do while loop :  Current state is ON")
	$CurrentState = CheckCurrentState	
	Sleep -s $loopwaitcounter
	EngageHue
	
}
while($CurrentState -eq 1)




