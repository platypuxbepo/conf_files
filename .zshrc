# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# ZSH=/usr/share/oh-my-zsh/
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# To get user ID and PC address off the prompt
DEFAULT_USER=`whoami`

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# source $ZSH/oh-my-zsh.sh

########################## Me me me me me me me me me me me me me me me
#
#

####

# carbon copy of my .config/fish/config.fish @ May 8th, 2017

export EDITOR='vim'
alias bsway="export XKB_DEFAULT_LAYOUT=fr; export XKB_DEFAULT_VARIANT=bepo; ; sway"

setxkbmap fr bepo
#-option grp:switch,grp:alt_shift_toggle,grp_led:scroll fr,us

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return (marche pas dans fish)

# for java runnning
export CLASSPATH=""

# to reload this otg
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
alias p3="python3.6"

# aliases for cd
alias cdo="cd ~/Documents/ortho"
alias cdi="cd ~/Documents/languages/italiano/corsi_2016-7/"
alias cdgd="cd ~/Google\ Drive"
alias cdcg="cd ~/Documents/ortho/culturegé"
alias CD="cd ~"
alias cdtrash="cd ~/.local/share/Trash/files"
alias cdz="cd ~/cross_systems/zhengmapractice" 
alias cdl="cd ~/Documents/languages"
alias cdcross="cd ~/cross_systems" 
alias cdprogs="cd ~/programmes"

## aliases for cd for programming
alias devcpp="tmuxinator start devcpp"
alias devpy="tmuxinator start devpy"

alias cdprpy="cd ~/coding/python"
alias cdprjv="cd ~/coding/java"
alias cdpr="cd ~/coding"
alias cdprcpp="cd ~/coding/cpp"
alias cdprtlap="cd ~/coding/tla_programmer"

alias cdprpymu="cd ~/coding/python/pycrashcourse"
alias cdprjvmu="cd ~/coding/java"
alias cdprcppmu="cd ~/coding/cpp/nofear"

alias pysession="~ /coding/python/onmyown/countdown.py"

alias learnjava="cd ~/Téléchargements/books/computing/java/Lynda.com\ -\ Java\ Essential\ Training\ 2016/"
alias cdbkpr="cd ~/Téléchargements/books/computing"
#alias javac="/usr/lib/jvm/java-8-openjdk/bin/javac"

# programming era

# Compile And Run Anything (script by me, Laurent !)
alias cara=/home/laurent/programmes/.system_me/cara.sh

# spacemacs
alias smc="emacs -nw"
alias sm=emacs

# edit conf files

alias pdfprog="qpdfview /home/laurent/coding/winners/*.pdf"
alias vimpy="vim ~/.vim/ftplugin/python.vim"
alias vimcpp="vim ~/.vim/ftplugin/c.vim"
alias vimc="vim ~/.vim/ftplugin/c.vim"
alias vimjava="vim ~/.vim/ftplugin/java.vim"


alias vimpysnip="vim ~/.vim/UltiSnips/python.snippets"
alias vimcppsnip="vim ~/.vim/UltiSnips/cpp.snippets"
alias vimcsnip="vim ~/.vim/UltiSnips/c.snippets"
alias vimjavasnip="vim ~/.vim/UltiSnips/java.snippets"

# edit coding related files
alias cheats="vim ~/coding/cheats.md"

# pas dans .bashrc
alias elements="calc ~/Documents/ortho/elements.xls"
alias étym="vim /home/laurent/Documents/ortho/étym.md"
alias genres="vim /home/laurent/Documents/ortho/genres.md"
alias vimrc="vim ~/.vimrc"
alias bépovim="vim ~/.vimrc.bepo"
alias culturgé="cdo & vim culturegé.md"
alias lg="cdo & vim lg.md"
alias fixorth="vim ~/Documents/ortho/fixation_orthog.md"
alias dailytodo="vim ~/cross_systems/dailytodo.md"
alias veille="systemctl suspend -i"
alias trashit="gio trash"

#alias wifi="sudo wifi-menu -o"
alias agenda=calcurse
alias tips="vim ~/programmes/backupconf/tipstoremember_me.md"
alias wgetbetter=aria2

alias vimfish="vim ~/.config/fish/config.fish"
alias vimi3="vim ~/.config/i3/config"
alias vimsway="vim ~/.config/sway/config"
alias voc="cdo & vim voc.md"
alias quotes="vim ~/cross_systems/quotes.md"
alias vocned="cdo & vim voc_cned.md"
alias vocEN="vim ~/cross_systems/vocEN.md"

alias rcovocEN=./programmes/.system_me/rcovocEN.sh

alias abr="vim ~/.vimrc.abrLD_FR"
alias abbr="vim ~/.vimrc.abbrLD_EN"
alias x=startx
alias ideas="vim ~/cross_systems/idées_vrac.md"
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
#
#

alias srcz="source ~/.zshrc"
alias vimz="vim ~/.zshrc"
alias vimsm="vim ~/.spacemacs"
alias smsm="emacs ~/.spacemacs"
alias clara=/home/laurent/programmes/.system_me/clara.sh
alias stop=poweroff

source ".zprezto/init.zsh"
autoload -Uz promptinit
promptinit
prompt giddie
