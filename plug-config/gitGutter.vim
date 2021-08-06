function! NextHunkAllBuffers()
  let line = line('.')
  GitGutterNextHunk
  if line('.') != line
    return
 endif

  let bufnr = bufnr('')
 while 1
    bnext
    if bufnr('') == bufnr
      return
    endif
    if !empty(GitGutterGetHunks())
      1
      GitGutterNextHunk
      return
    endif
  endwhile
  endfunction
  function! PrevHunkAllBuffers()
  let line = line('.')
  GitGutterPrevHunk
  if line('.') != line
    return
  endif
  let bufnr = bufnr('')
  while 1
    bprevious
    if bufnr('') == bufnr
      return
    endif
    if !empty(GitGutterGetHunks())
      normal! G
      GitGutterPrevHunk
      return
    endif
  endwhile
 endfunction
 nmap <silent> ]c :call NextHunkAllBuffers()<CR>
 nmap <silent> [c :call PrevHunkAllBuffers()<CR>
 nmap ggs <Plug>(GitGutterStageHunk)
 nmap ggu <Plug>(GitGutterUndoHunk)
 let g:gitgutter_show_msg_on_hunk_jumping = 0
 let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)
 let g:gitgutter_max_signs = -1   " default value (otherwise)
 let g:gitgutter_set_sign_backgrounds = 1
