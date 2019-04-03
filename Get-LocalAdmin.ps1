param(
    [Parameter(mandatory=$true)]
    [string]$ComputerName = $env:ComputerName
)

Get-Wmiobject -Class Win32_useraccount -filter "Local='True'" | Where-Object SID -like "*-500"