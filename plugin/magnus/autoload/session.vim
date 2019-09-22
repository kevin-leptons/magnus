function! EchoInfo(msg)
    echohl MoreMsg | echo a:msg | echohl None
endfunction

function! magnus#EchoWarning(msg)
    echohl WarningMsg | echo a:msg | echohl None
endfunction

function! magnus#SaveSession()
    if filereadable(g:session_file)
        call delete(g:session_file)
        exec 'mksession '.g:session_file
    endif
endfunction

function! magnus#MakeSession()
    if !isdirectory(g:tmp_dir)
        call mkdir(g:tmp_dir)
    endif
    if filereadable(g:session_file)
        call delete(g:session_file)
        call EchoWarning(g:session_file.' was removed')
    else
        exec 'mksession! '.g:session_file
        call EchoInfo(g:session_file.' has been created')
    endif
endfunction

function! magnus#LoadSession()
    if argc() == 0
        if filereadable(g:session_file)
            if g:magnus_session_loaded == 0
                let g:magnus_session_loaded = 1
                exec 'source '.g:session_file
                call EchoInfo(g:session_file.' is loaded')
            endif
        endif
    endif
endfunction
