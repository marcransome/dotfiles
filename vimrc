" general
set shell=/bin/bash " for vundle to work with fish
set nocompatible    " don't use vi compatibility
set encoding=utf-8
set number          " display line numbers
set backspace=2     " allow backspacing in insert mode

" whitespace/indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" searching
set hlsearch
set incsearch

" visual
set laststatus=2    " always display the statusline in all windows
set noshowmode      " hide the default mode text below statusline 
syntax on           " enable syntax highlighting
colorscheme distinguished

filetype off        " required for vundle

" reduce terminal timeout when leaving insert
" mode for faster updates to statusline
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" plugins
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline'
"Bundle 'Yggdroot/indentLine'

filetype plugin indent on   " required for vundle
