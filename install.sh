#!/bin/bash
: '
This script makes running the script very easy.
It installs pip3 (necessary to install package dependencies),
installs dependencies and starts the updater.

parameters [git repo, mega link (optional), "-update" or "-remove" (optional)]
'
if [ -z "$2" ]
then
  $git_branch = "main"
else
  $git_branch = $2
fi
sudo apt-get -y install python3-pip && pip3 install -r <(curl "https://raw.githubusercontent.com/h3xp/RickDangerousUpdate/$git_branch/requirements.txt" -s -N) && python3 <(curl "https://raw.githubusercontent.com/h3xp/RickDangerousUpdate/$git_branch/install.py" -s -N) $git_branch $3