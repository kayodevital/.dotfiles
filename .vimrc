call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
call plug#end()
vnoremap <C-c> "*y : let @+=@*<CR>
map <C-v> "+P
