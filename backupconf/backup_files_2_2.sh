#!/bin/zsh
#cd /home/laurent/Google\ Drive/conf_files
cd /home/laurent/Dropbox/conf_files
cd "$(ls -t | head -1)"
cp -R /home/laurent/.config/i3 ./
cp -R /home/laurent/.config/fish/ ./
cp /home/laurent/.xinitrc ./
cp /home/laurent/.vimrc* ./
cp /home/laurent/.bashrc ./
#/opt/grive-tools/grive-indicator
/bin/dropbox

