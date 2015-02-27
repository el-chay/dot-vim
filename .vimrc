"tab stop = 4; shift width = 4; expand tab on; visual bell (instead of beep)
set ts=4 sw=4 et vb
colorscheme zenburn
set laststatus=2

set statusline=   " Reload!
set statusline+=%n\                          " buffer number
set statusline+=%-9(«%f»%)∥\                 " file name
set statusline+=%{strlen(&ft)?&ft:'none'},   " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}               " file format
set statusline+=%2(\∥%)%2(%h%m%r%w%)         " flags
set statusline+=%=                           " right align
set statusline+=%b,0x%-2B                    " current char value (dec,hex)
set statusline+=∥%l,%c%V                     " offset
set statusline+=∥%%%p                        " percentage

let g:airline_powerline_fonts = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '∥'
let g:airline_right_sep = '∥'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = 'Ⓡ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme = 'wombat'
