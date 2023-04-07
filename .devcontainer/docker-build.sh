#!/usr/bin/env bash

set DEBIAN_FRONTEND=noninteractive

# Update package lists and install required packages
apt update
apt install -y python3 python3-pip

# Upgrade pip and install required Python tools
python3 -m pip install --user --upgrade pip
python3 -m pip install --user CodeChat-Server runestone pretext iverilog

# Install more textbook developing software: LaTeX, sage, and other pdf tools
apt install -y --no-install-recommends texlive texlive-latex-extra texlive-fonts-extra texlive-xetex texlive-science texlive-music sagemath ghostscript pdf2svg
