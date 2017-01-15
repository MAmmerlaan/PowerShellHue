
$user = 'username'
$pass = 'password'
$database = 'PowerShellHue'
$MySQLHost = 'localhost'
$databasetable = 'detectphoneonwifi'
$Message = 'Hello World!'

#wait time in seconds to wait and retry and find devices.
$WaitTimeIfNoDeviceOnline = 20

$bridgeIP 				= "192.168.178.12"
$username 				= "d84f5e9696ffd7394edb2d22fa3cfb"
$ApiUrl 				= "http://$BridgeIP/api/$username/lights"
$logbasedirectory 		= "\logs\"
$loopwaitcounterSec		= (Get-Random -Minimum 600 -Maximum 1200)
$colortransitiontime	= 180

#the device name, and IP of the device you want to have detected. This device must be response to ICMP (ping)
$devices = @( ("PhoneMart", "192.168.178.98"), ("PhoneSas", "192.168.178.97") )
#the id's of your HUE lights, get the ID's by calling you HUE api. See variable $ApiUrl
$huelights = @( ("1"),("2"),("3") )

$waittimeshort = 30
$script:engagedHue = 0
$waittimelong = 600

$waittime = $waittimeshort