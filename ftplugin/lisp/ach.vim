
setlocal lisp autoindent showmatch cpoptions-=mp
" Possible folding method
setlocal foldmethod=marker foldmarker=(,) foldminlines=1
" This allows gf and :find to work. Fix path to your needs
setlocal suffixesadd=.lisp,cl path=/usr/src/lisp/**
" This allows [d [i [D [I work across files if you have asdf buffer present.
" If I used load, it would be there too.
setlocal include=(:file\
