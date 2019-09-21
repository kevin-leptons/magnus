" function: load plugin from directory
let g:plugin_dir='$VIM_PLUGIN_DIR'
exec 'set rtp^='.g:plugin_dir
func! s:load_plugin(name)
	exec 'set rtp+='.g:plugin_dir.'/'.a:name
	exec 'runtime! '.a:name.'/plugin/*.vim'
	exec 'runtime! '.a:name.'/after/*.vim'
	exec 'runtime! '.a:name.'/colors/*.vim'
endf

" begin: load nerdcommenter
call s:load_plugin('nerdcommenter')
" end: load nerdcommenter

" begin: load ctrlp.vim
let g:ctrlp_map = '<leader>t'
let g:ctrlp_prompt_mappings = {
	\ 'ToggleType(1)':		['<c-up>'],
	\ 'ToggleType(-1)':	   ['<c-down>'],
	\ 'PrtClearCache()':	  ['<c-f>'],
	\ }
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](
	\\.git|
	\build|dest|dist|tmp|
	\cmake-build-debug|
	\node_modules|
	\venv|egg-info|__pycache__
	\)$',
	\ 'file': '\v\.(\swp|swo|so|a|pyc)$',
	\ }
let g:ctrlp_lazy_update = 250
let g:ctrlp_match_window='bottom,order:btt,min:11:max:11:results:10'
let g:ctrlp_line_prefix = ' '
let g:ctrlp_match_current_file = 1
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn' }

function BrightHighlightOn()
	hi! link CursorLine PmenuSel
endfunction

call s:load_plugin('ctrlp.vim')
" end: load ctrlp.vim

" begin: load autopairs
call s:load_plugin('auto-pairs')
" end: load autopairs

" begin: load vim-easymotion
call s:load_plugin('vim-easymotion')
call s:load_plugin('incsearch.vim')
call s:load_plugin('incsearch-easymotion.vim')
map <SPACE> <Plug>(incsearch-easymotion-stay)
" end: load vim-easymotion

" begin: load super tab
call s:load_plugin('supertab')
let g:SuperTabDefaultCompletionType = "<c-n>"
" end: load super tab

" begin: load magnus_session
call s:load_plugin('magnus_session')
" end: load magnus_session

set nocompatible
set tw=78
set listchars=tab:>~
set tabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set nowrap
set mouse=a
set ignorecase
set statusline=%f\ %=%l/%L\ %c\ %3p%%
set laststatus=2
set cino=N-s
set autowriteall

filetype indent plugin on

map <LEADER><TAB> :tabnew<CR>
map <TAB> :tabn<CR>
map <S-TAB> :tabp<CR>

map <LEADER>g <C-w>gf<CR>
map <LEADER>q :wq<CR>
map <LEADER>c :waq<CR>
map <LEADER>s :wa<CR>
