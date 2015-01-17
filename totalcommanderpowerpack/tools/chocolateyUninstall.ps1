$packageName = 'totalcommanderpowerpack'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

$unfolder = 'TC PowerPack 2'
$unfile = 'uninstall.exe'

try {
  if (Test-Path "${Env:ProgramFiles(x86)}\$unfolder") {
    $unpath = "${Env:ProgramFiles(x86)}\$unfolder\$unfile"
  } else {
    $unpath = "$Env:ProgramFiles\$unfolder\$unfile"
  }
  Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unpath" -validExitCodes $validExitCodes
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
