# PowerShellHue

Is a Powershell/ MySQl based script that engages a set of Hue lights, when the went down, and wifi devices respons.
The suntimes are read from a database table. And the devices are two smartphone, with static IP's. If the devices are not only, it will start a infinite loop, and will not light up the 
This script is ran from a Windows 10 based HTPC which is not online 24/7.   

Installation / Setting up 

Install your preferred WAMP stack, I choose AppServ. 

1. Unzip the files to your local drive.

2. Setup a scheduled task (trigger 'On system startup') for starting the powershell scripts. You can use docs/StartPhilpsHue_v2.xml as an example. Mind the absolute path of your files.

3. Setup the following parameters in the variables file.

	- $user, $password, $database = details MySQL in your local WAMP stack.
	- $bridgeIP use this URL to retrieve Bridge IP adres : https://www.meethue.com/api/nupnp
	
	$username 				= 
	- get a username by opening the Bridge webinterface.
	- 	http://$BridgeIP/debug/clip.html
	-	Press the central button on the Hue Bridge
	- 	Send the following call to the ApiUrl
	- 		URL : /api
	-  		Body : {"devicetype":"my_hue_app#powershell_script"}
	-		Method : POST
	-	Your username in the response.
	
	$ApiUrl 				= "http://$BridgeIP/api/$username/lights"
	$loopwaitcounterSec		= The wait time between switching colors in seconds.
	
	$colortransitiontime	= Description: The duration of the transition from the light’s current state to the new state. This is given as a multiple of 100ms and defaults to 4 (400ms). For example, setting transistiontime:10 will make the transition last 1 second.
	
	
	$devices = @( ("PhoneHusband", "192.168.178.x"), ("PhoneWife", "192.168.178.y") )
		#the device name, and IP of the device you want to have detected. This device must be response to ICMP (ping)
	
	$huelights = @( ("1"),("3") )
		#the id's of your HUE lights, get the ID's by calling you HUE api. See variable $ApiUrl

	You can edit the paramaters of the maximum brightness of the Hue light in the EngageHue function.
	
	
Using 

Start Default.bat (or directly default.ps1), and let the lights go on.