# ~/.bashrc

# carbon copy of my .bashrc @ 16年10月16日, minus a couple things that don't work in it, which can be found by /ing fish)
# addenda only made to it are parsed "# pas dans .bashrc"

setxkbmap fr bepo
#-option grp:switch,grp:alt_shift_toggle,grp_led:scroll fr,us

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return (marche pas dans fish)

# make fish not display the greeting message at startup (found on Archwiki page) LD
set fish_greeting

# for java runnning
export CLASSPATH=""


alias srcfish="source ~/.config/fish/config.fish"



alias ls='ls --color=auto'
alias myupdate="/home/laurent/programmes/.system_me/script_update.sh"
alias oed="wine /home/laurent/programmes/oed/Oxford\ English\ Dictionary\ -\ 2nd\ Ed.\ Vers.4.0\ \(2009\)\ \(Malestrom™\)/swhx.exe"
alias rco="wine /mnt/rc/rcwin.exe"
alias cepd="wine /home/laurent/programmes/cepd/cepd17.exe"
alias writer="libreoffice --writer"
alias calc="libreoffice --calc"
alias viv=vivaldi-stable
alias pianoteq="~/programmes/Pianoteq\ 5\ STAGE/amd64/Pianoteq\ 5\ STAGE"
alias p2="python2"

# aliases for cd
alias cdo="cd ~/Documents/ortho"
alias cdi="cd ~/Documents/languages/italiano/corsi_2016-7/"
alias cdgd="cd ~/Google\ Drive"
alias cdcg="cd ~/Documents/ortho/culturegé"
alias CD="cd ~"
alias cdtrash="cd ~/.local/share/Trash/files"
alias cdz="cd ~/Documents/main_misc/zhengmapractice" 
alias cdl="cd ~/Documents/languages"
alias cdmm="cd ~/Documents/main_misc" 
alias cdprogs="cd ~/programmes"

## aliases for cd for programming

alias cdprpy="cd ~/coding/python"
alias cdprjv="cd ~/coding/java"
alias cdpr="cd ~/coding"
alias cdprcpp="cd ~/coding/cpp"

alias cdprpymu="cd ~/coding/python/pycrashcourse"
alias cdprjvmu="cd ~/coding/java"
alias cdprcppmu="cd ~/coding/cpp/nofear"


alias learnjava="cd ~/Téléchargements/books/computing/java/Lynda.com\ -\ Java\ Essential\ Training\ 2016/"
alias cdbkpr="cd ~/Téléchargements/books/computing"
#alias javac="/usr/lib/jvm/java-8-openjdk/bin/javac"

# programming era

alias pdfprog="qpdfview /home/laurent/coding/winners/*.pdf"
alias vimpy="vim .vim/ftplugin/python.vim"
alias vimcpp="vim .vim/ftplugin/c.vim"
alias vimc="vim .vim/ftplugin/c.vim"
alias vimjava="vim .vim/ftplugin/java.vim"


alias vimpysnip="vim .vim/UltiSnips/python.snippets"
alias vimcppsnip="vim .vim/UltiSnips/cpp.snippets"
alias vimcsnip="vim .vim/UltiSnips/c.snippets"
alias vimjavasnip="vim .vim/UltiSnips/java.snippets"

# pas dans .bashrc
alias elements="calc ~/Documents/ortho/elements.xls"
alias étym="vim /home/laurent/Documents/ortho/étym.md"
alias genres="vim /home/laurent/Documents/ortho/genres.md"
alias vimrc="vim ~/.vimrc"
alias bépovim="vim ~/.vimrc.bepo"
alias culturgé="cdo & vim culturegé.md"
alias lg="cdo & vim lg.md"
alias fixorth="vim ~/Documents/ortho/fixation_orthog.md"
alias dailytodo="vim ~/Documents/main_misc/dailytodo.md"
alias veille="systemctl suspend -i"
alias trashit=gvfs-trash
alias stop=poweroff
alias trashswp="gvfs-trash .*.swp"
alias trashswo="gvfs-trash .*.swo"
alias gdrive="/opt/grive-tools/grive-indicator"
alias ijva="/opt/intellij-idea-ce/bin/idea.sh"

#alias wifi="sudo wifi-menu -o"
alias agenda=calcurse
alias tips="vim ~/programmes/backupconf/tipstoremember_me.md"
alias wgetbetter=aria2

alias vimfish="vim ~/.config/fish/config.fish"
alias vimi3="vim ~/.config/i3/config"
alias voc="cdo & vim voc.md"
alias quotes="vim ~/Documents/main_misc/quotes.md"
alias vocned="cdo & vim voc_cned.md"
alias vocEN="cd ~/Documents/languages/English & vim vocEN.md"

alias rcovocEN=./programmes/.system_me/rcovocEN.sh

alias abr="vim ~/.vimrc.abrLD_FR"
alias abbr="vim ~/.vimrc.abbrLD_EN"
alias x=startx
alias ideas="vim ~/Documents/main_misc/idées_vrac.md"
alias backupconf="~/programmes/backupconf/backup_files.sh"
alias son=pacmixer
alias impression=system-config-printer
alias ebookreader=lucidor
alias liseuse=lucidor
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
