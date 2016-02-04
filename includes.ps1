$bridgeIP = "192.168.178.24"
$username = "d84f5e9696ffd7394edb2d22fa3cfb"
$ApiUrl = "http://$BridgeIP/api/$username/lights/1"

#write-host $ApiUrl



function CheckCurrentState 
{
	#mkdir($args[0])
   

    $result = Invoke-RestMethod -Uri $ApiUrl 
    
    if ($result.state -match 'on=False') 
    {
        write-host 'Light is OFF'
    }
    else
    {
        write-host 'Light is ON'
    }
}
cls
CheckCurrentState

