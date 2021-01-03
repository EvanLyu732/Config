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
set path=$PWD/**
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
set hidden
set backspace=indent,eol,start
set foldmethod=syntax
"reativenumber in insert mode; absolute number in insert mode
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber 
autocmd InsertLeave * :setlocal relativenumber 

"use vim-jsonc for coc
autocmd FileType json syntax match Comment +\/\/.\+$+

"folding setting
set foldenable 
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual


syntax on



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

"buffer switching
noremap <leader>] :bnext<cr>
noremap <leader>[ :bprev<cr>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"use ` as highlightcurrent index`
vnoremap . :normal.<CR>



