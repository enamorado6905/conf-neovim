let g:nvim_data_root = stdpath('data')
let g:nvim_config_root = stdpath('config')
let g:config_file_list = ['/nvim-plugins/plugins.vim',
    \ '/general/settings.vim',
    \ '/keymapping/keys.vim',
    \ '/plug-config/airline.vim',
    \ '/plug-config/coc.vim',
    \ '/plug-config/theme.vim',
    \ '/plug-config/tmuxNavigate.vim',
    \ '/plug-config/nerdcommenter.vim',
    \ '/plug-config/closeTag.vim',   
    \ '/plug-config/inSearch.vim',
    \ '/plug-config/gitGutter.vim',
    \ '/plug-config/rainbowParenthesis.vim',  
    \ '/plug-config/indentLine.vim',
    \ '/plug-config/prettier.vim',
    \ '/plug-config/commentary.vim',
    \ '/plug-config/abolish.vim',
    \ '/plug-config/ctags.vim',
    \ '/plug-config/gutentags.vim'
    \ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . f
endfor

