set nocompatible
syntax on

" reopen file in last location
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" show yaml indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"indentline plugin?
let g:indentLine_char = '⦙'

set number                     " Show current line number
set relativenumber             " Show relative line numbers

