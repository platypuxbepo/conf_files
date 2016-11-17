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
alias voc="libreoffice --writer /home/laurent/Documents/Orthophonie/vocabulaire_général.odt"
alias writer="libreoffice --writer"
alias calc="libreoffice --calc"
alias vivaldi=vivaldi-stable
alias pianoteq="~/Musique/playing/piano/pianoteq_versions/v571/Pianoteq\ 5\ STAGE"

# aliases for cd
alias cdo="cd ~/Documents/ortho_2016"
alias cdi="cd ~/Documents/languages/italiano/corsi_2016-7/"
alias cdgd="cd ~/Google\ Drive"
# pas dans .bashrc
alias cd16="cd ~/Documents/2016misc" 
alias cdz="cd ~/Documents/2016misc/zhengmapractice" 
alias cdlg="cd ~/Documents/languages"
alias CD="cd ~"
alias cdtrash="cd ~/.local/share/Trash/files"
alias trashit=gvfs-trash
alias veille="systemctl suspend -i"
alias stop=poweroff

# PS1='[\u@\h \W]\$ ' (marche pas dans fish)

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
