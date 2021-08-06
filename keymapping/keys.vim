" Edit vimrc faster
nnoremap <Leader>v :e $MYVIMRC<cr>

" Reload init.vim
nnoremap <silent> <Leader><Leader> :source $MYVIMRC<cr>

"Change working directory
nnoremap <leader>cd :cd %:p:h<cr>

"Mapping NERDTree
map <C-n> :NERDTreeToggle<cr>

" Explore COC
nnoremap <C-a> :CocCommand explorer<CR>
nnoremap <C-z> :CocCommand explorer --preset floating<CR> 

" Use alt + hjkl to resize windows
nnoremap <M-j>  :resize -2<CR>
nnoremap <M-k>  :resize +2<CR>
nnoremap <M-h>  :vertical resize -2<CR>
nnoremap <M-l>  :vertical resize +2<CR>


" NerdCommenter Toggle remap to CTRL+/
vmap <C-_> <Plug>NERDCommenterToggle<cr>
nmap <C-_> <Plug>NERDCommenterToggle<cr>


" Start Terminal using PowerShell 7 (Preview)
" For default shell, remove "://pwsh.exe"
" You can customize the shell by replacing "pwsh.exe" with your shell for example:
"       :edit term://bash
"       :vsplit term://top
" For more :help terminal
nmap <leader>t :vsplit term://bash<cr>

" Move between buffers
nnoremap <leader><tab> :bn<cr>
nnoremap <leader><S-tab> :bp<cr>

" Closing and hiding current buffer
nnoremap <leader>w :bd<cr>



let g:mapleader = ' '  " Definir espacio como la tecla líder

nnoremap <leader>s :w<CR>  " Guardar con <líder> + s

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

"Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

"Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

"Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

"Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

"Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

"Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

"Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

"Automatically save and load folds
nnoremap <leader>w :w <CR>
nnoremap <C-q> :wq <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>so :so%<CR>
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>


let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>
noremap <leader><cr> <cr><c-w>h:q<cr>
nnoremap <c-z> :u<CR>      "Avoid using this** (control+z)
inoremap <c-z> <c-o>:u<CR>
:imap ii <Esc>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"last position
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" | 
    \ endif
endif

