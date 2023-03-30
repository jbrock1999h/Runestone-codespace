#!/usr/bin/env bash

echo "Updating system packages and installing iVerilog..."
apt update
apt install -y verilog git

echo "Creating a Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

echo "Updating pip..."
pip install --upgrade pip

echo "Installing Python tools..."
pip install CodeChat-Server runestone bookserver

echo "Installing Digital System Design textbook..."
git clone https://github.com/bjones1/digital_systems_design.git
cd digital_systems_design
# A Runestone build must be run before waf configure will work, even though the waf build Runestone runs will fail.
runestone build
python3 waf configure --no-arm --no-pic24
