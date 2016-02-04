."./include.ps1" 
Clear-Host
$bridgeIP = "192.168.178.24"
$username = "d84f5e9696ffd7394edb2d22fa3cfb"
$ApiUrl = "http://$BridgeIP/api/$username/lights/1"
$waittimebetweenchanges = 


for($i=1
     $i -le 15
     $i++){

        $bri = (Get-Random -Maximum 255 -Minimum 100)
        $sat = (Get-Random -Maximum 255 -Minimum 1)
        $hue = (Get-Random -Maximum 65500 -Minimum 1)

$Input = @"
{
 "on":true, "sat":$sat, "bri":$bri,"hue":$hue
}
"@
    Invoke-RestMethod -Method Put -Uri $ApiUrl"/state" -Body $Input
    Start-Sleep -Milliseconds 500
}


$Input = @"
{
 "on":false
}
"@
 Invoke-RestMethod -Method Put -Uri $ApiUrl -Body $Input