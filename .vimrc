syntax on
set sw=4 ts=4
set number
set autoindent

autocmd BufNewFile,BufRead *.glsl.js
    \ setlocal filetype=c

highlight LineNr ctermfg=grey

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

set background=dark
colorscheme PaperColor

set undofile
set undodir=~/.vim/undo//,.
set backupdir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.

" "Aliases" for commonly used commands+lazy shift finger:
command! -bar -nargs=* -complete=file -range=% -bang W         <line1>,<line2>write<bang> <args>
command! -bar -nargs=* -complete=file -range=% -bang Wq        <line1>,<line2>wq<bang> <args>
command! -bar -nargs=* -complete=file -range=% -bang WQ        <line1>,<line2>wq<bang> <args>
command! -bar -nargs=* -complete=file          -bang E         edit<bang> <args>
command! -bar                                  -bang Q         quit<bang>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
autocmd BufReadPost * silent! normal! g`"zv

