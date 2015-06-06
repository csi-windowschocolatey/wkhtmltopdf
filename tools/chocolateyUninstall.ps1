
If (Test-Path "$env:ProgramFiles\wkhtmltopdf\uninstall.exe") {Start-Process "$env:ProgramFiles\wkhtmltopdf\uninstall.exe" -ArgumentList "/S"}

If (Test-Path "${env:ProgramFiles(x86)}\wkhtmltopdf\uninstall.exe") {Start-Process "${env:ProgramFiles(x86)}\wkhtmltopdf\uninstall.exe" -ArgumentList "/S"}
