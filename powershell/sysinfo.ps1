$Hello = "Hello, PowerShell"
Write-Host($Hello)

Set-ExecutionPolicy -ExecutionPolicy Unrestricted

Get-NetIPAddress

get-help get-netipaddress

get-netipaddress.ipaddress

get-command get-netipaddress

(get-netipaddress).ipv4address

(get-netipaddress).ipv4address | Select-String "10.11*"

function getIP{
    (get-netipaddress).ipv4address | Select-String "10.11*"
}

write-host(getIP)

$IP = getIP

Write-Host("This machine's IP is $IP")

Write-Host("This machine's IP is {0}" -f $IP)

send-mailmessage -to rtsketch@hotmail.com -from powershellsmtp@gmail.com -subject "IT3038c Windows SysInfo" -body "This machine's IP address is 10.11.34.173 User is sketchrn version 5.1.22621.963 Todays date is Tuesday 1/31/2023" -SmtpServer smtp.gmail.com -port 587 -UseSSL -Credential (Get-Credential)