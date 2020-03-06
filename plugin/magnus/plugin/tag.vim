let g:tag_file = "tmp/tags"

auto BufLeave * call tag#UpdateBufferTag()
auto VimEnter * call tag#SetupTags()
noremap <c-]> <c-]>zz

