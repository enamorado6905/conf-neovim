call plug#begin(stdpath('data').'/plugged')

    "Themes
    Plug 'morhetz/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

    " NERDTree
    Plug 'preservim/nerdtree'

    " VIM-DEVICONS icons for NERDTree
    Plug 'ryanoasis/vim-devicons'

    " Conquer Of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Surround.vim
    Plug 'tpope/vim-surround'

    " Airline status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " NERDCommenter
    Plug 'preservim/nerdcommenter'

    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-eunuch'

    "NERD COMMENTER
     Plug 'preservim/nerdcommenter' 

    "UTILITIES
     Plug 'tpope/vim-fugitive'

    "TERMINAL
     Plug 'voldikss/vim-floaterm'

    "Git
     Plug 'airblade/vim-gitgutter'
     Plug 'tpope/vim-fugitive'

    "tmux
    Plug 'christoomey/vim-tmux-navigator'

    "Typing (HTML,css,scss,less)
    Plug 'alvan/vim-closetag'         "Auto closed <*></*>
    Plug 'jiangmiao/auto-pairs'       "Auto closed [({})]
    Plug 'tpope/vim-surround'
    Plug 'majutsushi/tagbar'
    Plug 'AndrewRadev/tagalong.vim'

    "RAINBOW PARENTHESIS
    Plug 'kien/rainbow_parentheses.vim'

    "IndentLine
    Plug 'Yggdroot/indentLine'

    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', {
     \ 'do': 'npm install',
     \ 'for': ['javascript', 'typescript', 'php' , 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

    "CodeIgnter
    "Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'

    "COMMENTER
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-abolish'

    "Ctags
    Plug 'universal-ctags/ctags'
    Plug 'ludovicchabant/vim-gutentags'


    call plug#end()


