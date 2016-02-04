#lets start working from current dir..
."$PSScriptRoot\includes.ps1"
CLS
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

CheckCurrentState


if ((($today).DayOfYear) -le ($earliest_sunset.DayOfYear))
{
    #write-host 'its between the first of january and 24th of june'

    #1 januari = 16:38sunset
    #24 june = 22:04sunset
   
    #difference in time = 210min
    #difference in days = 206 days

    #sunset on the first of january
    #([DateTime]::Today.AddHours(16).Addminutes(38))

    #today, the sun will set around :
    $calculatedSunSet = [DateTime]::Today.AddHours(16).Addminutes(38).AddMinutes((($today).DayOfYear )).ToString("HH:mm")
    #write-host $calculatedSunSet
    #Get-Date -UFormat %R

    if ($calculatedSunSet -lt (Get-Date -UFormat %R))
    {
        write-host "$calculatedSunSet is less then current time. We shall engage the Philips Hue"
		$engageHue = 1;
    }
    else
    {
         write-host "Current Time is before $calculatedSunSet. We have to wait before the sun sets."
		 $engageHue = 0;
    }

   


}
elseif((($today).DayOfYear) -gt ($earliest_sunset.DayOfYear) -and (($today).DayOfYear) -le ($latest_sunset.DayOfYear))
{
    write-host 'its between 24th june and 12 december'

}
elseif ((($today).DayOfYear) -gt ($latest_sunset.DayOfYear) )
{
    write-host 'its between 12 december and the end of the year'

}

