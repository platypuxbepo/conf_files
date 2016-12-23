#!/bin/zsh
#cd /home/laurent/Google\ Drive/conf_files
#cd /home/laurent/Dropbox/conf_files
cd /home/laurent/SparkleShare/conf_files
cd "$(ls -t | head -1)"
cp -R /home/laurent/.config/i3 ./i3_main
cp -R /home/laurent/.i3blocks.conf ./.i3blocks.conf_main
cp -R /home/laurent/.config/fish ./fish_main
cp -R /home/laurent/.config/terminology ./terminology_main
cp /home/laurent/.xinitrc ./.xinitrc_main
cp /home/laurent/.vimrc* ./
cp /home/laurent/.bashrc ./.bashrc_main
#/opt/grive-tools/grive-indicator
#/bin/dropbox
/bin/sparkleshare start
