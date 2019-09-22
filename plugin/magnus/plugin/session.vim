set sessionoptions=blank,tabpages,options,curdir

let g:magnus_session_loaded = 0
let g:tmp_dir = 'tmp'
let g:session_file = g:tmp_dir . '/session.vim'

autocmd VimLeave * call magnus#SaveSession()
autocmd VimEnter * nested call magnus#LoadSession()
map <LEADER><LEADER> :call magnus#MakeSession()<CR>
