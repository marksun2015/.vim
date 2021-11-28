syntax enable
set softtabstop=4
set tabstop=4
set expandtab
set mouse=v
set smartindent
set shiftwidth=4
set laststatus=2
set cindent
set hlsearch
set nu

""""""""""""""""""""""""""""""""
" record position
""""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

""""""""""""""""""""""""""""""""
" NERDTree setting
""""""""""""""""""""""""""""""""
nnoremap <silent> <F2> :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

""""""""""""""""""""""""""""""""
" Specify a directory for plugins
""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()
