set ts=4 sw=4 laststatus=2
set et vb is ic scs hls nocp nosmd
setlocal spell spelllang=en_us
colorscheme zenburn
syntax on

set statusline=   " Reload!
set statusline+=\ %{mode()}\ \|               " Mode
set statusline+=\ %t\ \|                      " file name
set statusline+=\ %{!empty(&ft)?&ft:'none'},  " filetype
set statusline+=%{!empty(&fenc)?&fenc:&enc},  " encoding
set statusline+=%{&fileformat}\               " file format
set statusline+=%m%w%h%r                      " flags
set statusline+=%=                            " right align
set statusline+=%b,0x%B\ \|\                  " current char
set statusline+=%l,%c\ \|\                    " position
set statusline+=%%%p                          " file %

" netrw stuff
let g:netrw_banner = 0
" Slimv
let g:lisp_rainbow=1
let g:slimv_repl_split=4
" Don't use the default pager, load the Man plugin
let $PAGER=''
runtime ftplugin/man.vim
set keywordprg=:Man
set guifont=Inconsolata\ Medium\ 14
map <F12> :0r!wget -q http://whatthecommit.com/index.txt -O -<CR>
