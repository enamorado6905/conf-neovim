if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
" For dark version.
"set background=dark
" For light version.
" set background=light
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_cursor = 'orange'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox-material
