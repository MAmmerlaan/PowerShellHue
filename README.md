# PowerShellHue

Installation
1. Setup a scheduled task (trigger 'On system startup') to the start.bat file.
2. Setup a scheduled task for stopping the Hue on shutdown.
	Shutdown :
	Execute gpedit.msc (local Policies)
	Windows settings -> Scripts -> Shutdown -> Properties -> Add
		(the script notices when the Hue is turned off, and will stop. This job is to turn of the hue when your PC shuts down.
3. Setup the following paramters in the include file.
	$bridgeIP use this URL to retrieve Bridge IP adres : https://www.meethue.com/api/nupnp
	$username 				= 
	#get a username by opening the Bridge webinterface.
	#	http://$BridgeIP/debug/clip.html
	#	Press the central button on the Hue Bridge
	#	Send the following call to the ApiUrl
	#		URL : /api
	#		Body : {"devicetype":"my_hue_app#powershell_script"}
	#		Method : POST
	#	Your username in the response.
	$ApiUrl 				= "http://$BridgeIP/api/$username/lights/1"
	$logbasedirectory 		= "\logs\"
	$loopwaitcounterSec		= The wait time between switching colors. 
	$colortransitiontime	= Description: The duration of the transition from the light’s current state to the new state. This is given as a multiple of 100ms and defaults to 4 (400ms). For example, setting transistiontime:10 will make the transition last 1 second.

	You can edit the paramaters of the maximum brightness of the Hue light in the EngageHue function.