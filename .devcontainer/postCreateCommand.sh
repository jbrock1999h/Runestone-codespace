#!/usr/bin/env bash

# <h1>postCreateCommand.sh - Install dependencies after the Codespace starts up
# </h1>
# <p>install / upgrade pip</p>
echo "Updating pip..."
python3 -m pip install --user --upgrade pip

echo "Installing the CodeChat Server..."
python3 -m pip install --user CodeChat-Server "Sphinx<6"

echo "Installing iVerilog..."
sudo apt install -y iverilog
