" tab stop = 4; shift width = 4; expand tab on; visual bell (instead of beep)
" laststatus and showtabline are for "airline"
" incsearch and hlsearch self explanatory
" nocp no compatible with vi ;-)
set ts=4 sw=4 et vb laststatus=2 showtabline=2 incsearch hlsearch nocp
setlocal spell spelllang=en_us
colorscheme zenburn
syntax on

set statusline=   " Reload!
set statusline+=%n\                           " buffer number
set statusline+=«%f»\                         " file name
set statusline+=%{!empty(&ft)?&ft:'none'},    " filetype
set statusline+=%{!empty(&fenc)?&fenc:&enc},  " encoding
set statusline+=%{&fileformat}\               " file format
set statusline+=%m%w%h%r                      " flags
set statusline+=%=                            " right align
set statusline+=%(%b,0x%B%)\║\                " current char
set statusline+=%(%l,%c%V%)\║\                " offset
set statusline+=%%%p║                         " file %

let g:airline_powerline_fonts = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '║'
let g:airline_right_sep = '║'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = '®'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme = 'zenburn'
let g:airline#extensions#tabline#left_alt_sep = '║'
let g:airline#extensions#tabline#left_sep = '║'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
map <F12> :0r!wget -q http://whatthecommit.com/index.txt -O -<CR>

" netrw stuff
let g:netrw_banner = 0
" Slimv
let g:lisp_rainbow=1
