cls
#cd 'D:\GoogleDrive\PowerShell_detectPhoneOnWifi'
Set-Location $(get-location).Path;

start-service mysql
. “.\variables.ps1” 
. “.\functions.ps1” 

$a = 1 
do
{
   
   CheckSolarTimes

   if($script:solartime -eq "evening")
   {
        #write-host "Solartime is evening.."
        RunQuery  "log"  "Solartime is evening.."
            
        DetectPhone

        write-host "phone found net voor hue aan statement is $script:phonefound"

        if($script:phonefound -ne 0)
        {
            write-host "Activate HUE"
            #activate
            #waittime high
            EngageHue
            RunQuery  "log"  "Waiting $script:loopwaitcounterSec seconds after engaging the Hue."
            sleep -s $script:loopwaitcounterSec
        }
        else
        {
            #deactivate
            #no wait
            ShutdownHue
            RunQuery  "log"  "It is evening, but no devices are found online, shutting down the Hue lights."
            sleep -s $WaitTimeIfNoDeviceOnline
            RunQuery  "log"  "Waiting $WaitTimeIfNoDeviceOnline seconds, then retrying to find devices."
        }
        
   }
   elseif($script:solartime -eq "morning")
   {
        ShutdownHue
        RunQuery  "log"  "Solartime set to morning, disengaging the Hue lights."
        sleep -s 60
    }

}While ($a -eq 1)

