$ErrorActionPreference = 'Stop'; # stop on all errors

# Remove the Start Menu shortcuts from the All Users profile we created at install
Remove-Item -Path (Join-Path -Path $env:ALLUSERSPROFILE -ChildPath 'Microsoft\Windows\Start menu\Programs\Gitter') -Recurse
