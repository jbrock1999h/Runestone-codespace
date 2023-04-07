#!/usr/bin/env bash

echo "Installing Digital System Design textbook..."
git clone https://github.com/bjones1/digital_systems_design.git
cd digital_systems_design
# A Runestone build must be run before waf configure will work, even though the waf build Runestone runs will fail.
runestone build
python3 waf configure --no-arm --no-pic24
