function tag#UpdateBufferTag()
	if @% == ""
		return
	endif
	silent execute '!ctags -f ' . g:tag_file ' -a %'
endfunction

function tag#SetupTags()
	if filereadable(g:tag_file)
		set tags=tmp/tags
		return
	endif

	silent execute '!ctags -f ' . g:tag_file . ' --exclude .git --tag-relative no --recurse .'
	set tags=tmp/tags
endfunction
