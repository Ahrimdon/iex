# View Source Code: https://git.chse.dev/chase/redist-installer
$url = "https://dl.chse.dev/downloadFile?id=irdm2Pjjf4FrkG3" # Redist-Installer.bat
$temp = [Environment]::GetEnvironmentVariable("TEMP")
$file = "$temp\Redist-Installer.bat"

(New-Object System.Net.WebClient).DownloadFile($url, $file)
Start-Process -Wait $file
Remove-Item $file
