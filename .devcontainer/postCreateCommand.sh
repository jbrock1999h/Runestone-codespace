#!/usr/bin/env bash

# <h1><code>postCreateCommand.sh</code> - Perform installs after the docker
#     container build process</h1>
# <p>These commands are run as the owner of the repo, instead of root.</p>
# <p>Create a new PreTeXt project.</p>
pretext new -d .

# <p>For the Digital System Design book...</p>
#echo "Installing Digital System Design textbook..."
#apt install iverilog
#git clone https://github.com/bjones1/digital_systems_design.git
#cd digital_systems_design
# <p>A Runestone build must be run before waf configure will work, even though
#     the waf build Runestone runs will fail.</p>
#runestone build
#python3 waf configure --no-arm --no-pic24
