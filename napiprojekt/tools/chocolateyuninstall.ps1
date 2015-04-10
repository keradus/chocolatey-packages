$ErrorActionPreference = 'Stop';

$packageName = 'napiprojekt'
$registryUninstallerKeyName = 'NapiProjekt_is1'
$installerType = 'EXE'
$silentArgs = '/SILENT'
$validExitCodes = @(0)

$osBitness = Get-ProcessorBits

if ($osBitness -eq 64) {
    $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
} else {
    $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
}

Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $file
