let g:tag_file = "tmp/tags"
let g:tmp_dir = 'tmp'

function tag#LogInfo(msg)
	echohl MoreMsg | echo a:msg | echohl None
endfunction

function! tag#LogWarn(msg)
    echohl WarningMsg | echo a:msg | echohl None
endfunction

function tag#Index()
	silent exec '!ctags -f ' . g:tag_file .'
		\ --exclude .git
		\ --tag-relative --recurse .'
	redraw!
endfunction

function tag#Load()
	set tags=tmp/tags
endfunction

function tag#ToggleEnable()
    if !isdirectory(g:tmp_dir)
        call mkdir(g:tmp_dir)
    endif
	if !filereadable(g:tag_file)
		call tag#Index()
		call tag#Load()
		call tag#LogInfo("ctags is enabled")
	else
		set tags=""
        call delete(g:tag_file)
		call tag#LogWarn("ctags is disabled")
	endif
endfunction

function tag#Startup()
	if !filereadable(g:tag_file)
		return
	endif

	call tag#Index()
	call tag#Load()
endfunction

function tag#UpdateBuffer()
	if @% == ""
		return
	endif
	silent execute '!ctags -f ' . g:tag_file ' -a %'
endfunction
