$packageName = 'totalcommanderpowerpack'
$installerType = 'exe'
$url = 'http://sfs.mm.onet.pl/get/files/1/pclab/pliki/16850/tcmdpp20b.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
