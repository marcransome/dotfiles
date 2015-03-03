" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'bling/vim-airline'
    Plugin 'scrooloose/nerdtree'
    Plugin 'jiangmiao/auto-pairs'
call vundle#end()  
filetype plugin indent on

" Vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
set timeoutlen=20

" NERDTree settings
let NERDTreeShowHidden=1

" Whitespace
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

" General settings
set laststatus=2
set relativenumber
set noshowmode
set backspace=2

" Functions
function! ToggleLineNumberType()
    if &number
        set nonumber
        set relativenumber
    else
        set norelativenumber
        set number
    endif
endfunction

" Key mappings
nnoremap <silent> <C-i> :call ToggleLineNumberType()<CR>
nnoremap <silent> <C-l> :bnext!<CR>
nnoremap <silent> <C-h> :bprevious!<CR>
nnoremap <silent> <C-n> :enew<CR>
nnoremap <silent> <C-k> :bd<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>

" fix for vundle issues with fish (non-POSIX compliance)
set shell=/bin/bash

