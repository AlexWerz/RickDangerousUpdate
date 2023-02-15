# Create user pi without home
# Add user pi to sudoers

# mount image and set path below
# fdisk -l /path/to/img/arch.img
# mount -t auto -o loop,offset=$(([START-PARTITION]*512)) /path/to/img/arch.img /mnt/image/extract
mntImagePath=/mnt/image/extract

# link /home/pi from image
sudo rm /home/pi
sudo ln -s $mntImagePath/home/pi/ /home/pi

sudo rm /opt/retropie
sudo ln -s $mntImagePath/opt/retropie/ /opt/retropie

sudo rm /etc/emulationstation
sudo ln -s $mntImagePath/etc/emulationstation/ /etc/emulationstation

cd ..
sudo apt-get -y install python3-pip && pip3 install -r requirements.txt
#sudo -u pi python3 update.py [MEGA-LINK]

# Mount folders to RaspberryPi
# /home/pi
# /opt/retropie
# /etc/emulationstation
