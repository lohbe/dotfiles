call plug#begin()
Plug 'LnL7/vim-nix'
Plug 'vmchale/dhall-vim'
Plug 'Yggdroot/indentline'
call plug#end()

filetype plugin indent on
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et ai indentkeys-=<:> indentkeys-=0#

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
