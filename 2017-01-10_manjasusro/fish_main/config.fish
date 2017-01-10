# ~/.bashrc
# carbon copy of my .bashrc @ 16年10月16日, minus a couple things that don't work in it, which can be found by /ing fish)
# addenda only made to it are parsed "# pas dans .bashrc"

setxkbmap fr bepo
#-option grp:switch,grp:alt_shift_toggle,grp_led:scroll fr,us

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return (marche pas dans fish)

# make fish not display the greeting message at startup (found on Archwiki page) LD
set fish_greeting

alias ls='ls --color=auto'
alias myupdate="/home/laurent/programmes/.system_me/script_update.sh"
alias oed="wine /home/laurent/programmes/oed/Oxford\ English\ Dictionary\ -\ 2nd\ Ed.\ Vers.4.0\ \(2009\)\ \(Malestrom™\)/swhx.exe"
alias rco="wine /mnt/rc/rcwin.exe"
alias cepd="wine /home/laurent/programmes/cepd/cepd17.exe"
alias writer="libreoffice --writer"
alias calc="libreoffice --calc"
alias viv=vivaldi-stable
alias pianoteq="~/programmes/Pianoteq\ 5\ STAGE/amd64/Pianoteq\ 5\ STAGE"

# aliases for cd
alias cdo="cd ~/Documents/ortho"
alias cdi="cd ~/Documents/languages/italiano/corsi_2016-7/"
alias cdgd="cd ~/Google\ Drive"
# pas dans .bashrc
alias cdprogs="cd ~/programmes"
alias cdmm="cd ~/Documents/main_misc" 
alias elements="calc ~/Documents/ortho/elements.xls"
alias étym="vim /home/laurent/Documents/ortho/étym.md"
alias genres="vim /home/laurent/Documents/ortho/genres.md"
alias cdz="cd ~/Documents/main_misc/zhengmapractice" 
alias cdl="cd ~/Documents/languages"
alias culturgé="cdo & vim culturegé.md"
alias lg="cdo & vim lg.md"
alias fixorth="vim ~/Documents/ortho/fixation_orthog.md"
alias CD="cd ~"
alias cdtrash="cd ~/.local/share/Trash/files"
alias trashit=gvfs-trash
alias veille="systemctl suspend -i"
alias stop=poweroff
alias gdrive="/opt/grive-tools/grive-indicator"
#alias wifi="sudo wifi-menu -o"
alias vimfish="vim ~/.config/fish/config.fish"
alias vimi3="vim ~/.config/i3/config"
alias voc="cdo & vim voc.md"
alias vocned="cdo & vim voc_cned.md"
alias vocEN="cd ~/Documents/languages/English & vim vocEN.md"
alias abr="vim ~/.vimrc.abrLD_FR"
alias abbr="vim ~/.vimrc.abbrLD_EN"
alias x=startx
alias ideas="vim ~/Documents/2016misc/idées_vrac.md"
alias backupconf="~/programmes/backupconf/backup_files.sh"
alias son=pacmixer
alias ebookreader=lucidor
alias impression=system-config-printer
alias getconfme="echo Aller exécuter le getconfme.sh dans ~/programmes/backupconf. Trop dangereux pour le mettre en alias directement comme ça."
# configurer un écran extérieur branché en HDMI en résolution maximum à droite de l'écran principal
alias tv="xrandr --output HDMI1 --auto --right-of LVDS1"
#alias mecreatewqhd"xfce4-terminal -e xrandr --newmode "2560x1440" 220.812 2560 2608 2640 2720 1440 1443 1448 1478 -hsync -vsync"
#alias wqhd="xrandr --output HDMI1 --mode 2560x1440 --right-of LVDS1"
alias rétablirrésolution="xrandr --output LVDS1 --auto"
#alias y=startx and ~/programmes/.system_me/aoc.only.sh
# PS1='[\u@\h \W]\$ ' (marche pas dans fish)
alias aoc=~/programmes/.system_me/aoc_only.sh


export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=bus
export QT_IM_MODULE=ibus
export EDITOR="vim"

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

# Sets the Mail Environment Variable (from https://help.ubuntu.com/community/MuttAndGmail)
# MAIL=/var/spool/mail/john && export MAIL

# The following found on Archwiki, may be uncommented to attempt startx at login LD
# if status --is-login
#     if test -z "$DISPLAY" -a "$XDG_VTNR" -eq "1"
#             exec startx
#                 end
#                 end
