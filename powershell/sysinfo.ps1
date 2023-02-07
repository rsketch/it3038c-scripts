$BODY 

#Functions
function getIP{
       (get-netipaddress).ipv4address | Select-String "192*"
    }
Function getHostVer{
    (Get-Host).Version
    }
Function getDate{
    (Get-Date).Date
    }
Function getUser{
    (Get-LocalUser -Name "RyanSketch")
    }

#Variables
$IP = getIP
$Ver = getHostVer
$Date = getDate
$User = getUser

#What will be printed or displayed
Write-Host("This machine's IP is $IP,", "User: $User,", "PowerShell Version: $Ver,", "Date: $Date")

#Cmdlet that sends email
Send-MailMessage -To rtsketch@hotmail.com -From powershellsmtp@gmail.com -Subject "IT3038c Windows SysInfo" -Body "This machines IP is $IP, User: $User, PowerShell Version: $Ver, Date: $Date" -SmtpServer smtp.gmail.com -port 587 -UseSSL -Credential (Get-Credential)