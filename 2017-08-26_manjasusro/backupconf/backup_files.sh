#!/bin/zsh
# can't work with fish, you need something bash compliant
#cd /home/laurent/Google\ Drive/conf_files
#cd /home/laurent/Dropbox/conf_files
cd "/home/laurent/SparkleShare/github.com/conf files"
mkdir ./$(date -I)_manjasusro
cd "$(ls -t | head -1)"
cp -R /home/laurent/programmes/backupconf ./backupconf
cp -R /home/laurent/.config/i3 ./i3_main
cp -R /home/laurent/.vim/ftplugin ./.vim_main_ftplugin
cp -R /home/laurent/.vim/indent ./.vim_main_indent
cp -R /home/laurent/.vim/UltiSnips ./.vim_main_UltiSnips
cp -R /home/laurent/.i3blocks.conf ./.i3blocks.conf_main
cp -R /home/laurent/.config/fish ./fish_main
cp -R /home/laurent/.config/termite/config ./termiteconf
cp -R /home/laurent/.tmux.conf ./tmux.conf
cp -R /home/laurent/.byobu ./byobu
cp -R /home/laurent/programmes/.system_me ./
cp /home/laurent/.xinitrc ./.xinitrc_main
cp /home/laurent/.vimrc* ./
cp /home/laurent/.bashrc ./.bashrc_main
cp /home/laurent/.spacemacs ./.spacemacs_main
cp /home/laurent/.zshrc ./.zshrc_main
cp /home/laurent/.zpreztorc ./.zpreztorc_main
#/opt/grive-tools/grive-indicator
#/bin/dropbox
/bin/sparkleshare start
