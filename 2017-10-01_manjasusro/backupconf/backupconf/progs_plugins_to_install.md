# softs :
pacaur
>> then
vim feh fish clementine eog wine caps2esc tmux byobu tmuxinator git spacefm i3 i3blocks wcalc soundconverter k3b anki vlc gimp pacmixer pulseaudio gparted the_silver_searcher aria2 lucidor apache php-apache ansible

# why this soft ?
* feh : take screenshots;
* fish : just so I have it around;
* eog : good image viewer;
* lucidor : good ebook reader; 

# softs that could make it :
* terminology, pidgin

# firefox plugins :
* ghostery (adblocker)
* vimfx (=vimium sous Chrome, le meilleur sous FF)
* keybinder (pour 2-3 trucs pas pris en charge par vimfx)
* tree style tab (pour mettre les onglets à gauche jolis)
* vivaldifox (pour donner plus de gueule vite fait)

* vimfx
- recharger la page : [néant]
- arrêter le chargement de la page : c
- faire défiler vers gdbh : tsrn
- ouvrir un nouvel onglet : [néant]
- aller au résultat suivant : à
- aller au résultat précédent : À

* keybinder
- shortcut mappings
- select last tab : ctrl+alt+s
- show next tab : alt+s
- show previous tab : alt+r
- Back : alt+t
- forward : alt+n

* tree style tabs
- position du panneau des onglets : À droite
- nouveaux onglets -> ouvrir un nouvel onglet comme : un enfant de l'onglet courant

* about:config
- browser.tabs.closeWindowWithLastTab : false

# vim plugins :
Une fois Vundle installé selon la méthode sur https://github.com/VundleVim/Vundle.vim, faire :PluginInstall, les plugins seront récupérés directement (indiqué dans .vimrc).
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
* Plugin 'vim-airline/vim-airline'
* Plugin 'vim-airline/vim-airline-themes'
* Plugin 'vim-scripts/VOoM'

# paramétrage :
## vim utilise en priorité Vundle pour les plugins, et les différents fichiers de conf rattachés à .vimrc. Voir .vimrc ("source" dans .vimrc à ce jour : « source ~/.vimrc.bepo
source ~/.vimrc.abrLD_FR
source ~/.vimrc.abbrLD_EN
 »)

## c'est pas mal d'utiliser tmux systématiquement (eg "terminology -e tmux), après avoir fait de fish le shell par défaut de tmux. Mettre en cascade comme ça permet de garder un .bashrc le plus propre possible (pas de "exec fish" dedans). .bashrc propre, session stable.

## pour mettre caps2esc system wide :
(https://github.com/oblitum/caps2esc)
> sudo nice -n -20 ./caps2esc >caps2esc.log 2>caps2esc.err &
systemctl enable caps2esc

## pour mettre bépo (ou autre) system wide :
éditer /etc/vconsole.conf ainsi :

KEYMAP=fr-bepo
FONT=lat1-16
*KEYMAP=fr

## fichiers de conf (pour un répertoire /home/laurent de référence monté dans ~/hop)

cp .vim* ~/
cp -r ./.config/i3 ~/.config/
cp ./.i3blocks.conf ~/
cp -r ./.config/fish ~/.config/

## Java
* si les touches mortes ne fonctionnent pas, mettre ce qui suit dans l'/usr/bin/[appel_soft_java],
  juste après le shebang :
export XMODIFIERS=""

* si les polices sont dégueulasses, mettre ce qui suit dans /etc/environment :

_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'
JAVA_FONTS=/usr/share/fonts/TTF_ (pas le derniers underscore, il est juste là pour contrebalancer
celui, réel, qui est avant java_options et qui pourrit le .md)


* si l'environnement (jre jvm) est installé mais que les liens vers les exécutables java dans
  /usr/bin et autres ne mènent pas vers eux, il faut créer le symlink vers "default" qui manque. Par
  exemple si on est dans le bon répertoire, on peut taper :
  sudo ln -s ./java-8-openjdk default 

