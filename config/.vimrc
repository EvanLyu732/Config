let mapleader =" "

set nocompatible              " be iMproved, required
set noerrorbells
set smartindent
set nowrap
set incsearch
set splitbelow splitright
set wildmode=longest,list,full
set noswapfile
set ruler
syntax on
execute pathogen#infect()
filetype plugin indent on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Always Open Nerdtree
autocmd VimEnter * NERDTree

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

colorscheme gruvbox
set background=dark


"Remap ESC key to jh
inoremap jh <Esc>
noremap <leader>q :q<cr>
noremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
nmap <leader>t :TagbarToggle<CR>
