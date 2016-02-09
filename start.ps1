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
	#write-host $("Do while Current state is OFF")
	Sleep -s $loopwaitcounter
	Log $("Do while Current state is OFF")
	$CurrentState = CheckCurrentState
	$checkSunset = checkSunSet
	
	
}
while($CurrentState -eq 0)

do
{
	#write-host $("Do while Current state is ON")
	Sleep -s $loopwaitcounter
	Log $("Do while Current state is ON")
	$CurrentState = CheckCurrentState
	
	
	
}
while($CurrentState -eq 1)




