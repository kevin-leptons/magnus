autocmd VimLeave * call session#SaveSession()
autocmd VimEnter * nested call session#LoadSession()
map <LEADER><LEADER> :call session#MakeSession()<CR>
