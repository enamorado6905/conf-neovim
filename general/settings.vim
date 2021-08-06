syntax enable

syntax on
filetype plugin indent on
set nocompatible
set title
set number
set mouse=a

set guicursor=                                     " Disable blinking for the n-v-c modes
set termguicolors
set guioptions-=T                                   " No Tool bar
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L

set cursorline                                     " Highlight the current line

set hidden                                         " When on a buffer becomes hidden when it is abandoned
set path+=**
set nowrap
set showcmd
set autowrite
set ruler
set showmatch
set sw=2
set encoding=UTF-8

set number relativenumber

set smartindent
set smarttab
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set incsearch
set nohlsearch
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set noswapfile
set nobackup
set undofile
execute 'set undodir=' . g:nvim_data_root . '/undodir'

" Python virtual environment detection in linux
let g:loaded_python_provider = 0
" Ruta donde se creó el ambiente de Python con pipenv.
let g:python3_host_prog = '/home/orlando/.local/share/virtualenvs/nvim-TXhJRABW/lib/python3.8'

"Change cursor
"Always show the signcolumn, otherwise it would shift the text each time
"diagnostics appear/become resolved.
if has("patch-8.1.1564")
  "Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

   " Cursor appearance
    "
    " See also: [1]'ANSI Control Functions Summary', [2]DECSCUSR, [3]xterm+tmux
    "   entry in terminfo.src.
    " [1] https://www.vt100.net/docs/vt510-rm/chapter4.html
    " [2] https://invisible-island.net/xterm/ctlseqs/ctlseqs.html
    " [3] https://raw.githubusercontent.com/mirror/ncurses/master/misc/terminfo.src
    "
    " On:
    " - entered insert mode
    let &t_SI = "^[[5 q^[]12;Magenta\007" " blinking bar (Ss) in magenta (Cs)
    " - entered replace mode
    let &t_SR = "^[[0 q^[]12;Red\007" " blinking block (Ss) in red (Cs)
    " - leaving insert/replace mode
    let &t_EI = "^[[2 q^[]112\007" " terminal power-on style (Se) and colour (Cr)

    " Sets cursor styles
" Block in normal, line in insert, underline in replace
set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20

