set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'gmarik/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'gabrielelana/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'vim-scripts/VOoM'
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

:filetype plugin indent on
source ~/.vimrc.bepo
source ~/.vimrc.abrLD_FR
source ~/.vimrc.abbrLD_EN

"source ~/.vim/writer.vim

"test recognition of .md files as markdown (from http://stackoverflow.com/questions/10964681/enabling-markdown-highlighting-in-vim)
"au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
"———————
"———————

"pour Airline :
set laststatus=2
set ttimeoutlen=50
let g:airline_theme='hybrid'

"programming shit 
syntax enable
let python_highlight_all = 1

"Markdown plugin shit
" Disable folding
"let g:vim_markdown_folding_disabled=1
"Pour l'indentation automatiquement la même que la ligne précédente :
set autoindent

"The followin I, Laurent, learned about in
"https://www.youtube.com/watch?v=XA2WjJbmmoM#t=677.99524

" search down into subfolders with :find command
" provides tab completion for all file-related tasks (+= means append the variable right before to what comes nexte)
set path+=**
" display all matching files when we tab complete
set wildmenu
" NOW WE CAN:
" — Hit tab to :find by partial match
" — Use * to make it fuzzy
" THINGS TO CONSIDER:
" — :b lets you autocomplete any open buffer

" FILE BROWSING:
"
" " Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
"
" " NOW WE CAN:
" " - :edit a folder to open a file browser
" " - <CR>/v/t to open in an h-split/v-split/tab
" " - check |netrw-browse-maps| for more mappings
