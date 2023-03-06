#!/usr/bin/env bash

# <h1>postCreateCommand.sh - Install dependencies after the Codespace starts up
# </h1>
# <p>install / upgrade pip</p>
echo "Updating pip..."
python3 -m pip install --user --upgrade pip

echo "Installing Python tools..."
python3 -m pip install --user CodeChat-Server runestone bookserver

echo "Installing iVerilog..."
sudo apt update
sudo apt install -y verilog

echo "Installing Digital System Design textbook..."
git clone https://github.com/bjones1/digital_systems_design.git
cd digital_systems_design
# A Runestone build must be run before waf configure will work, even though the waf build Runestone runs will fail.
runestone build
python3 waf configure --no-arm --no-pic24
