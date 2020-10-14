"" version: 0.1
"" time: 2020.10.14

set nocompatible              
let mapleader =" "

"use vim defaluts"
set ma "modifiable to true"
set noerrorbells
set smartindent
set nowrap
set incsearch
set splitbelow splitright
set wildmode=longest,list,full
set noswapfile
set ruler
set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set history=1000
set undofile 
set undodir=~/.vim/undodir


"magic mode
"set cursorline
"set cursorcolumn

highlight Comment ctermfg=green
syntax on

execute pathogen#infect()
filetype plugin indent on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Always Open Nerdtree
" autocmd VimEnter * NERDTree

"Plug begin
call vundle#begin('~/.vim/bundle/here')
Plugin 'jreybert/vimagit'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'lervag/vimtex'
Plugin 'gmarik/Vundle.vim'
call vundle#end()
"Plug end

"colorscheme gruvbox
"set background=dark


"Remap ESC key to jh
inoremap  bn <Esc>
noremap <leader>q :wq<cr>
noremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
nmap <leader>t :TagbarToggle<CR>

"copy and paste"
vnoremap<C-c>  :w !pbcopy<CR><CR> 
vnoremap <C-v> :r !pbpaste<CR><CR>

let g:livepreview_previewer = 'PDF Expert'
let g:netrw_browse_split=4
let g:netrw_winsize=20
