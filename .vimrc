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

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" Initialize plugin system
call plug#end()
