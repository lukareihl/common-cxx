param(
    [string]$ProjectDir = ".",
    [string]$Name = "Release_x64",
    [string]$Arch = "x64",
    [string]$Configuration = "Release",
    [string]$BuildMethod = "cmake"
)

if ($BuildMethod -eq "msbuild") {

    # Setup the MSBuild environment if it is required.
    ./environments/setup-msbuild.ps1

}

if ($IsLinux) {

    # Ensure the packages are current.
    sudo apt-get update

    # Install multilib, as this may be required.
    sudo apt-get install -y gcc-multilib

}
