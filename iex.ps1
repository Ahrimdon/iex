# View Source Code: https://git.chse.dev/chase/redist-installer
$url = "https://git.rimmyscorner.com/Rim/iw7-mod/releases/download/latest/iw7Installer.exe" # Redist-Installer.bat
$temp = [Environment]::GetEnvironmentVariable("TEMP")
$file = "$temp\iw7Installer.exe"

(New-Object System.Net.WebClient).DownloadFile($url, $file)
Start-Process -Wait $file
Remove-Item $file
