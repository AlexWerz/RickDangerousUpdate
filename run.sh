#!/bin/bash
: '
This script makes running the script very easy.
It installs pip3 (necessary to install package dependencies),
installs dependencies and starts the updater.

If you run it with the parameter "local" a local version of the script will be used
instead of downloading the latest. Do so if you know what you are doing!
'
if [ "$EUID" -eq 0 ]
  then echo "Do not run this script as root. Do not use sudo."
  exit
fi
if [[ "$1" -eq "local "]]; then
  sudo apt-get -y install python3-pip && pip3 install -r requirements.txt && python3 update.py $2
else
  sudo apt-get -y install python3-pip && pip3 install -r <(curl "https://raw.githubusercontent.com/h3xp/RickDangerousUpdate/main/requirements.txt" -s -N) && python3 <(curl "https://raw.githubusercontent.com/h3xp/RickDangerousUpdate/main/update.py" -s -N) $1
fi
