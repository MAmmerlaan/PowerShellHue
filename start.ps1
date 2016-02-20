#lets start working from current dir..
."$PSScriptRoot\includes.ps1"



write-host $CurrentState
do
{
	
	Log $("Do while loop :  Current state is OFF")
	$CurrentState = CheckCurrentState
	$TurnOnHueBasedonTime = checkSunSet
	write-host "turnonhue is "$TurnOnHueBasedonTime
	if($TurnOnHueBasedonTime)
	{
		write-host "checkSunSet is true and the hue is turned off. time to turn it on.."
		EngageHue
	}
	else
	{
		write-host "Hue is off, and the sun hasn't set."
		Sleep -s 60
	}
	
	
}
while($CurrentState -eq 0)
Log $("Do while loop while HUE is OFF exited.")
	
do
{
	Log $("Do while loop :  Current state is ON")
	write-host "Waiting to next transition ( wait : $loopwaitcounterSec, transitiontime :"($colortransitiontime/10)")"
	EngageHue
	Sleep -s ($loopwaitcounterSec+($colortransitiontime /10))
	$CurrentState = CheckCurrentState	
}
while($CurrentState -eq 1)
Log $("Do while loop while HUE is on exited.")


