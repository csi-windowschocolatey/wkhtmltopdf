
$Package = "wkhtmltopdf"
$Version = "0.12.2"

$installerType = 'EXE'
$url = 'http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.2_msvc2013-win32.exe'
$url64 = 'http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.2_msvc2013-win64.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
} catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  throw
}
