# firefox plugins :
* ghostery (adblocker)
* vimfx (=vimium sous Chrome, le meilleur sous FF)
* keybinder (pour 2-3 trucs pas pris en charge par vimfx)
* tree style tab (pour mettre les onglets à gauche jolis)
* vivaldifox (pour donner plus de gueule vite fait)

# vim plugins :
Une fois Vundle installé selon la méthode sur https://github.com/VundleVim/Vundle.vim, faire :PluginInstall, les plugins seront récupérés directement (indiqué dans .vimrc).
* Plugin 'vim-airline/vim-airline'
* Plugin 'vim-airline/vim-airline-themes'
* Plugin 'vim-scripts/VOoM'


# softs :
vim feh clementine eog terminology deepin-terminal wine pidgin caps2esc tmux git acpi the_silver_searcher

# paramétrage :
* vim utilise en priorité Vundle pour les plugins, et les différents fichiers de conf rattachés à .vimrc. Voir .vimrc ("source" dans .vimrc à ce jour : « source ~/.vimrc.bepo
source ~/.vimrc.abrLD_FR
source ~/.vimrc.abbrLD_EN
 »)

* c'est pas mal d'utiliser tmux systématiquement (eg "terminology -e tmux), après avoir fait de fish le shell par défaut de tmux. Mettre en cascade comme ça permet de garder un .bashrc le plus propre possible (pas de "exec fish" dedans). .bashrc propre, session stable.

* pour mettre caps2esc system wide :
(https://github.com/oblitum/caps2esc)
systemctl enable caps2esc

* silver searcher : dans shell, "ag"
