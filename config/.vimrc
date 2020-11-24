"" version: 0.2
"" time: 2020.11.24

set nocompatible              
set encoding=utf-8
let mapleader =" "

"use vim defaluts"
set ma "modifiable to true"
set noerrorbells
set smartindent
set nowrap
set path=.,**
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
set hidden
set backspace=indent,eol,start

setlocal path=.,**

"magic mode
"set cursorline
"set cursorcolumn

"highlight comment ctermfg=green
syntax on

execute pathogen#infect()
filetype plugin indent on
" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/vundle.vim

source $home/.vim/bundle/here/coc.vim

"plug begin
call vundle#begin('~/.vim/bundle/here')
plugin 'jreybert/vimagit'
plugin 'scrooloose/nerdtree'
plugin 'vim-airline/vim-airline-themes'
plugin 'majutsushi/tagbar'
plugin 'vim-airline/vim-airline'
plugin 'lervag/vimtex'
plugin 'gmarik/vundle.vim'
plugin 'tpope/vim-surround'
plugin 'puremourning/vimspector'
plugin 'ryanoasis/vim-devicons'
plugin 'tpope/vim-fugitive'

"coc
plugin 'neoclide/coc.nvim'

"fzf
plugin 'junegunn/fzf', {'do':{ -> fzf#install() }}
plugin 'junegunn/fzf.vim'

"colorscheme
plugin 'alessandroyorba/alduin'
plugin 'tomasiser/vim-code-dark'
call vundle#end()
"plug end

colorscheme codedark


"remap esc key to jh
inoremap  bn <esc>
inoremap <leader>s <c-c>:w<cr>
inoremap <c-e> <c-o>$
inoremap <c-a> <c-o>0

noremap <leader>q :wq<cr>
noremap <leader>w :w<cr>
noremap <leader>n :nerdtreetoggle<cr>
noremap <leader>t :tagbartoggle<cr>
noremap <leader>r :nerdtreefind<cr>
noremap n nzz
noremap n nzz
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

vnoremap . :normal.<cr>

let g:livepreview_previewer = 'pdf expert'
let g:netrw_browse_split=4
let g:netrw_winsize=20
let g:airline_theme='codedark'


let &t_si = "\<esc>]50;cursorshape=1\x7"
let &t_sr = "\<esc>]50;cursorshape=2\x7"
let &t_ei = "\<esc>]50;cursorshape=0\x7"


