set shell=/bin/bash "" to make sure that stuff works right while :PluginInstall
set exrc
set secure
set nocompatible              " be iMproved, required
set scrolloff=40              " LD garder le focus grosso-merdo au milieu de l'écran sur une résolution wqhd (2560*1440)
filetype off                  " required

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal" || $TERM == "terminology"
  set t_Co=256
endif
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" /// Plugins tried and not kept :
"Plugin 'gmarik/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'gabrielelana/vim-markdown'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'racer-rust/vim-racer'

Plugin 'python-mode/python-mode'
Plugin 'kien/ctrlp.vim'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sheerun/vim-polyglot'

Plugin 'hdima/python-syntax'
Plugin 'vim-syntastic/syntastic'

Plugin 'mattn/emmet-vim'

"" /// ultsnips plugin
" Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-q>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
"" /// ultisnips /end

Plugin 'Raimondi/delimitMate'
"Plugin 'Valloric/YouCompleteMe'
"
"Alternative to YCM that's way easier to implement :

Plugin 'Rip-Rip/clang_complete'

Plugin 'Yggdroot/indentLine'
Plugin 'ervandew/supertab'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'yegappan/mru'
Plugin 'vim-scripts/VOoM'
Plugin 'octol/vim-cpp-enhanced-highlight'

" Following to delete matching parens and stuff otg. From
" http://stackoverflow.com/questions/2084210/remove-a-pair-of-parentheses-brackets-or-braces-in-vim
" and http://www.vim.org/scripts/script.php?script_id=1697
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'  	" to get . to work as much as possible with stuff done in plugins.

" Following to undescore as a text object, for instance to ci_
Plugin 'lucapette/vim-textobj-underscore'
" It needs : 
Plugin 'kana/vim-textobj-user'

call vundle#end()            " required
filetype plugin indent on    " required

"" make YCM compatible with UltiSnips (using supertab)
"" following two blocks stolen to
"" http://chauncey.io/ultisnips-youcompleteme-now-if-i-can-just-get-you-two-to-cooperate/

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
  
"" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger="<S-Tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>""


"" get rid of the annoying YCM question about ycm_xtra_conf.py
let g:ycm_global_ycm_extra_conf = '/home/laurent/.vim/.ycm_extra_conf.py'


" cpp enhanced highlight plugin options
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

:filetype plugin indent on
source ~/.vimrc.bepo
"source ~/.vimtypematrix
"source ~/.vim/writer.vim

"LD to relead .vimrc otg :
map <S-s>:source ~/.vimrc<CR>:startinsert<CR> 

"LD to map zz (lowercase) to zR (unfold all)
map zz zR

"pour Airline :
set laststatus=2
set ttimeoutlen=50

" following necessary for 8colour terms :
"let g:airline_theme='hybrid'
"let g:airline_theme='wombat'
let g:airline_theme='term'

"programming shit 

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

"" just so things are fine in dark everywhere, plugins etc.
"colorscheme desert256
colo peachpuff 
syntax on
"set background=dark

let g:indentLine_char = '┆'

" system wide abbreviations
iabbrev iab iabbrev
iabbrev ttt True
iabbrev fff False

" to comment / uncomment whole paragraphs w/ commentary plugin
noremap cp g@ap

let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlP'
