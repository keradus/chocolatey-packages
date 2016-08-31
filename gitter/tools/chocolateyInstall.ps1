$packageName = 'gitter'
$installerType = 'exe'
$url = 'https://update.gitter.im/win/GitterSetup-3.1.0.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
