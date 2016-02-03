$packageName = 'gitter'
$installerType = 'exe'
$url = 'https://update.gitter.im/win/GitterSetup-2.4.0.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
