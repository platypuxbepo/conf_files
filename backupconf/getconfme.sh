#!/bin/zsh
# LD ***Attention, script avec des suppressions de fichiers de configuration très importants. S'il n'y a pas de quoi les remplacer, on va s'arrêter au milieu avec que dalle pour les remplacer… Et on est dans la merde.
# 
# EN LD ***You should be extra careful if you use that, this script erases crucial configuration files. If there's nothing to replace after afterwards, you're basically fucked.
#
#cd /home/laurent/Google\ Drive/conf_files
#cd /home/laurent/Dropbox/conf_files
/bin/sparkleshare start
cd /home/laurent/SparkleShare/conf_files
cd "$(ls -t | head -1)"

#rm -R /home/laurent/.config/i3
#cp -R ./i3 /home/laurent/.config/i3

rm -R /home/laurent/.config/fish
cp -R ./fish /home/laurent/.config/fish/

rm -R /home/laurent/.config/terminology
cp -R ./terminology /home/laurent/.config/terminology

#rm -R /home/laurent/.xinitrc
#cp ./.xinitrc /home/laurent/.xinitrc

rm -R /home/laurent/.vimrc*
cp ./.vimrc* /home/laurent/.vimrc*

#rm -R /home/laurent/.bashrc
#cp ./.bashrc /home/laurent/.bashrc
#/opt/grive-tools/grive-indicator
#/bin/dropbox
