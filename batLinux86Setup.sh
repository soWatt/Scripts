#!/bin/bash

cd ~
wget "https://github.com/sharkdp/bat/releases/download/v0.22.1/bat-v0.22.1-x86_64-unknown-linux-gnu.tar.gz" 
tar -xf bat-v0.22.1-x86_64-unknown-linux-gnu.tar.gz

CONF=$(~/bat-v0.22.1-x86_64-unknown-linux-gnu/bat --config-dir)
mkdir $CONF
curl https://raw.githubusercontent.com/soWatt/bat-custom-syntaxes/main/syntaxes/PSV.sublime-syntax -o $CONF/PSV.sublime-syntax

~/bat-v0.22.1-x86_64-unknown-linux-gnu/bat cache --build 

echo "alias bat=~/bat-v0.22.1-x86_64-unknown-linux-gnu/bat -l psv" >> ~/.bashrc 
echo "alias cbat=~/bat-v0.22.1-x86_64-unknown-linux-gnu/bat" >> ~/.bashrc 

