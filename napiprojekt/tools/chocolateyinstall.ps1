$ErrorActionPreference = 'Stop';

$packageName = 'napiprojekt'
$registryUninstallerKeyName = 'NapiProjekt_is1'
$installerType = 'exe'
$url = 'http://napiprojekt.pl/pobierz/NapiProjektBuild_2.2.0.2399.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes