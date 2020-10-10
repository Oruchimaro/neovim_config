" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'preservim/nerdtree'
    Plug 'scrooloose/nerdcommenter'
   
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    "Phpactor (for coc-phpactor)
    Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
    Plug 'elythyr/phpactor-mappings'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " THEME
    Plug 'joshdick/onedark.vim'

    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

    "Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    
    " Startify
    Plug 'mhinz/vim-startify'

    " Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'junegunn/gv.vim'
    Plug 'airblade/vim-gitgutter'

    " Snippets
    Plug 'honza/vim-snippets'
    " Codi
    Plug 'ChristianChiarulli/codi.vim'
    " Which Key
    Plug 'liuchengxu/vim-which-key'
    " Live server
    Plug 'turbio/bracey.vim' 
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

    " Gist 
    Plug 'mattn/webapi-vim'
    Plug 'mattn/vim-gist'

    " vim Floaterm
    Plug 'voldikss/vim-floaterm'
    Plug 'voldikss/fzf-floaterm'

    " Tabline
    Plug 'mg979/vim-xtabline'

    Plug 'Yggdroot/indentLine'

call plug#end()
