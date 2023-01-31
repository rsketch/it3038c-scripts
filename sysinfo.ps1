$Hello = "Hello, PowerShell"
Write-Host($Hello)

Set-ExecutionPolicy -ExecutionPolicy Unrestricted

Get-NetIPAddress

get-help get-netipaddress

get-netipaddress.ipaddress

get-command get-netipaddress

(get-netipaddress).ipv4address

(get-netipaddress).ipv4address | Select-String "10*"

function getIP{
    (get-netipaddress).ipv4address | Select-String "192*"
}

write-host(getIP)

$IP = getIP

Write-Host("This machine's IP is $IP")

Write-Host("This machine's IP is {0}" -f $IP)