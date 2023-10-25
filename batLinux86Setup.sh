#!/bin/bash

cd ~
wget "https://github.com/sharkdp/bat/releases/download/v0.24.0/bat-v0.24.0-x86_64-unknown-linux-musl.tar.gz"
tar -xf bat-v0.24.0-x86_64-unknown-linux-musl.tar.gz

CONF=$(~/bat-v0.24.0-x86_64-unknown-linux-musl/bat --config-dir)
mkdir $CONF
curl https://raw.githubusercontent.com/soWatt/bat-custom-syntaxes/main/syntaxes/PSV.sublime-syntax -o $CONF/syntaxes/PSV.sublime-syntax

~/bat-v0.24.0-x86_64-unknown-linux-musl/bat cache --build 

