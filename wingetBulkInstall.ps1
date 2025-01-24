# This script can be used to setup a new windows machine.
# In other words, a collection of software I always end up installing after reinstalling windows

$softwareList = "Git", "MSYS2", "Neovim", "VirtualBox"
write-host "The following software will be installed with winget: $softwareList"

winget install Git.Git 
start-sleep 1
winget install MSYS2.MSYS2
start-sleep 1
winget install Neovim.Neovim
start-sleep 1
winget install Oracle.VirtualBox
start-sleep 1