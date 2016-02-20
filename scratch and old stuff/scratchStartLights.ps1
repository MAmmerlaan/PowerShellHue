."./include.ps1" 
Clear-Host
$bridgeIP = "192.168.178.12"
#find your bridgeIP by visiting http://www.meethue.com/api/nupnp
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

 #write-host 'its between the first of january and 24th of june'

#1 januari = 16:38sunset
#24 june = 22:04sunset

#difference in time = 210min
#difference in days = 206 days

#sunset on the first of january
#([DateTime]::Today.AddHours(16).Addminutes(38))

#today, the sun will set around :
	#write-host $calculatedSunSet
#Get-Date -UFormat %R

#write-host $difference

#sunset 1st january = 16:38hrs
#sunset 24st june = 22:04hrs
#sunset 

#write-host $latest_sunset.DayOfYear
#write-host $earliest_sunset.DayOfYear


#write-host (get-date).Hour
#write-host (get-date).Minute
#write-host (get-date).DayOfYear
