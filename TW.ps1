clear

$onedrive = "\\kiedrive.kiewit.com@ssl\davwwwroot\personal\john_potter_kiewit_com\documents\Ticket Watch\"
$onedriveFile = "\\kiedrive.kiewit.com@ssl\davwwwroot\personal\john_potter_kiewit_com\documents\Ticket Watch\Ticket Watch.xlsx"

Write-Host "Connecting webdav to onedrive"
#[String]$WebDAVShare = $onedrive
New-PSDrive -Name O -PSProvider FileSystem -Root $onedrive

Test-Path $onedrive

Copy-Item $onedriveFile "\\khonemdcnas01\kss_team\Apps\Powershell Tools\KSS MultiTool\lib\TWDB" -Force

Remove-PSDrive -Name O 