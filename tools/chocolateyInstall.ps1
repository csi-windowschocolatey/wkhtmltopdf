
$Package = "wkhtmltopdf"
$Version = "0.12.2"

$installerType = 'EXE'
$url = 'http://download.gna.org/wkhtmltopdf/0.12/0.12.2.4/wkhtmltox-0.12.2.4_msvc2013-win32.exe'
$url64 = 'http://download.gna.org/wkhtmltopdf/0.12/0.12.2.4/wkhtmltox-0.12.2.4_msvc2013-win64.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
} catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  throw
}
