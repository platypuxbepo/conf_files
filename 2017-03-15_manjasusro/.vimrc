set exrc
set secure
set nocompatible              " be iMproved, required
set scrolloff=40              " LD garder le focus grosso-merdo au milieu de l'écran sur une résolution wqhd (2560*1440)
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
Plugin 'yegappan/mru'
Plugin 'vim-scripts/VOoM'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()            " required
filetype plugin indent on    " required


"" /// ultsnips plugin
" Track the engine.
Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"
" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-q>"
"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
"
"" /// ultisnips /end

 
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

" cpp enhanced highlight plugin options
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


:filetype plugin indent on
source ~/.vimrc.bepo
"source ~/.vimtypematrix

"source ~/.vim/writer.vim

"test recognition of .md files as markdown (from http://stackoverflow.com/questions/10964681/enabling-markdown-highlighting-in-vim)
"au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
"———————
"———————
"LD to relead .vimrc otg :
map <S-s> :source ~/.vimrc<CR>:startinsert<CR> 

"pour Airline :
set laststatus=2
set ttimeoutlen=50
let g:airline_theme='hybrid'

"programming shit 
syntax enable

let python_highlight_all = 1
let java_highlight_all = 1
let cpp_highlight_all = 1

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


" edit laurent pour split vertical avec focus sur nouveau viewport
map <C-F10> <Esc>:vsp<CR><C-n><Esc>:e 
" edit laurent pour affichage commandes
:set showcmd



" system wide abbreviations
iabbrev iab iabbrev
iabbrev ttt True
iabbrev fff False
