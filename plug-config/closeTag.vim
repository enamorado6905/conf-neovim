let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
 let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
 let g:closetag_filetypes = 'html,xhtml,phtml'
 let g:closetag_xhtml_filetypes = 'xhtml,jsx'
 let g:closetag_emptyTags_caseSensitive = 1
 let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
 let g:closetag_shortcut = '>'
 let g:closetag_close_shortcut = '<leader>>'
"CLOSETAG

"RENAME TAG
" The `<c-u>` removes the current visual mode, so a function can be called
xnoremap <buffer> p :<c-u>call <SID>Paste()<cr>
" The <SID> above is the same as the s: here
function! s:Paste()
  call tagalong#Trigger()
  " gv reselects the previously-selected area, and then we just paste
  normal! gvp
  call tagalong#Apply()
endfunction
inoremap <silent> <c-c> <c-c>:call tagalong#Apply()<cr>
let g:tagalong_filetypes = ['html']
let g:tagalong_additional_filetypes = ['custom', 'another']
