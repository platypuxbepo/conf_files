set number
setlocal tabstop=4
"setlocal softtabstop=2
"setlocal shiftwidth=2
setlocal cindent
setlocal foldmethod=syntax
setlocal foldnestmax=2
let c_space_errors=1
set colorcolumn=80
set expandtab ts=4 sw=4 ai
"colo desert

"for tpope's commentary :
setlocal commentstring=//\ %s

filetype plugin indent on
" show existing tab with 4 spaces width
"set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"
" it doesn't look it, but there's a non-breaking space here. That's
" for clang_complete autocompletion ——— LD
noremap!   <C-n>


iabbrev	rnn return 0
iabbrev « <<
iabbrev » >>
iabbrev rn return
iabbrev db double
iabbrev fn function
iabbrev tq ==
iabbrev nb number
iabbrev ft first
iabbrev scd second
iabbrev thd third
iabbrev vd void
iabbrev pt print
iabbrev rst result


