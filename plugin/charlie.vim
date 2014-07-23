if !exists('g:charlie_split_here_key')
    let g:charlie_split_here_key = 'K'
endif

execute "nnoremap" g:charlie_split_here_key ":call <sid>CharlieSplitHere()<CR>"

function! s:CharlieSplitHere()
  " split the line here
  execute "normal! i\<CR>\<Esc>"

  " remove any trailing whitespace on the previous line
  :let lineNumber = line(".") - 1
  :let line = getline(lineNumber)
  :let repl = substitute(line, '\s\+$', '', '')
  :call setline(lineNumber, repl)

  " move one char to the right
  execute "normal! l"
endfunction
