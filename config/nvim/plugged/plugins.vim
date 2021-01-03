call plug#begin('~/.config/nvim/autoload/plugged')
    "--------------------------------------------
    "public area
    "--------------------------------------------
    " Better Comments
    Plug 'tpope/vim-commentary'

    " surround and bracket
    Plug 'tpope/vim-surround'
    Plug 'rstacruz/vim-closer'

    " vun aur0line theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "nerd tree for file exploring
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    "fzf for file searching
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    "zen mode 
    Plug 'junegunn/goyo.vim'
     
    "starting screen
    Plug 'mhinz/vim-startify'

    "colorscheme
    Plug 'alessandroyorba/alduin'
    Plug 'tomasiser/vim-code-dark' 
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'

    "------------------------------------------
    "auto-completion
    "----------------------------------------- 
    "lsp support
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-lua/diagnostic-nvim'

    "emmet
    Plug 'mattn/emmet-vim'

    "Coc
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Keeping up to date with master
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

    "----------------------------------------
    "spell checking
    "----------------------------------------
    Plug 'dense-analysis/ale'

    "--------------------------------------
    "
    "--------------------------------------

    "--------------------------------------
    "git 
    "--------------------------------------
    Plug 'tpope/vim-fugitive'
    
    "--------------------------------------
    "tag display 
    "--------------------------------------
    Plug 'majutsushi/tagbar'
    
 
    "--------------------------------------
    "documentation checking
    "--------------------------------------
    Plug 'rizzatti/dash.vim'


    "---------------------------------------
    "debugging
    "---------------------------------------

call plug#end()


colorscheme codedark
