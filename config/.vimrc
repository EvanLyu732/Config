"author: EvanLyu732
"version: 0.2

set nocompatible              
set encoding=UTF-8
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
"reativenumber in insert mode; absolute number in insert mode
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber 
autocmd InsertLeave * :setlocal relativenumber 

"folding setting
set foldenable 
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual

setlocal path=.,**

"magic mode
"set cursorline
"set cursorcolumn

"highlight Comment ctermfg=green
syntax on

execute pathogen#infect()
filetype plugin indent on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

source $HOME/.vim/bundle/here/coc.vim

"Plug begin
call vundle#begin('~/.vim/bundle/here')
Plugin 'jreybert/vimagit'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'lervag/vimtex'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'puremourning/vimspector'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'
Plugin 'liuchengxu/vim-which-key'
Plugin 'jiangmiao/auto-pairs'
Plugin 'wellle/targets.vim'
"ALE
"zen mode
Plugin 'junegunn/goyo.vim'
"start
Plugin 'mhinz/vim-startify'
"coc
Plugin 'neoclide/coc.nvim'

"fzf
Plugin 'junegunn/fzf', {'do':{ -> fzf#install() }}
Plugin 'junegunn/fzf.vim'

"colorscheme
Plugin 'alessandroyorba/alduin'
Plugin 'tomasiser/vim-code-dark'
call vundle#end()
"Plug end

colorscheme codedark


"Remap ESC key to jh
inoremap  bn <Esc>
inoremap <leader>s <C-c>:w<cr>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

",/ for nohlsearch
nmap <silent> ,/ :nohlsearch<CR>
noremap <leader>q :wq<cr>
noremap <leader>w :w<cr>
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>t :TagbarToggle<CR>
noremap <leader>r :NERDTreeFind<cr>
noremap <leader>g :Goyo<CR>
noremap n nzz
noremap N Nzz
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"Jump back to the last change buffer
nnoremap <C-b> <C-^> 
inoremap <C-b> <esc><C-^>
"use ` as highlightcurrent index`
nnoremap `     vey/<C-r>0<cr>

vnoremap . :normal.<CR>

let g:livepreview_previewer = 'PDF Expert'
let g:netrw_browse_split=4
let g:netrw_winsize=20
let g:airline_theme='codedark'


let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


