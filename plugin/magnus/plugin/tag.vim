auto BufLeave * call tag#UpdateBuffer()
auto VimEnter * call tag#Startup()
noremap <c-]> <c-]>zz
map <LEADER>g :call tag#ToggleEnable()<CR>
