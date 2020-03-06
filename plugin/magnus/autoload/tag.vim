let g:tag_file = "tmp/tags"
let g:tmp_dir = 'tmp'

function tag#UpdateBufferTag()
	if @% == ""
		return
	endif
	silent execute '!ctags -f ' . g:tag_file ' -a %'
endfunction

function tag#SetupTags()
    if !isdirectory(g:tmp_dir)
        call mkdir(g:tmp_dir)
    endif

	if filereadable(g:tag_file)
		set tags=tmp/tags
		return
	endif

	silent execute '!ctags -f ' . g:tag_file . ' --exclude .git --tag-relative --recurse .'
	set tags=tmp/tags
endfunction
