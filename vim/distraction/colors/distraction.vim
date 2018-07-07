" Vim color file
" Maintainer:  Kevin Leptons <kevin.leptons@gmail.com>
" Last Change: 2017 Sept

hi clear
if exists("syntax_on")
  syntax reset
endif

if &bg == "light"
    hi magnus_normal            ctermfg=black       ctermbg=none
    hi magnus_normal_sel        ctermfg=white       ctermbg=black  cterm=none
    hi magnus_normal_italic     ctermfg=black       ctermbg=none   cterm=italic
else
    hi magnus_normal            ctermfg=grey        ctermbg=none
    hi magnus_normal_sel        ctermfg=black       ctermbg=grey   cterm=none
    hi magnus_normal_italic     ctermfg=grey        ctermbg=none   cterm=italic
endif
hi magnus_danger            ctermfg=darkred     ctermbg=none        cterm=none
hi magnus_danger_sel        ctermfg=white       ctermbg=darkred
hi magnus_warning           ctermfg=yellow      ctermbg=none 
hi magnus_warning_sel       ctermfg=black       ctermbg=yellow
hi magnus_success           ctermfg=darkgreen   ctermbg=none       
hi magnus_success_sel       ctermfg=white       ctermbg=darkgreen       
hi magnus_info              ctermfg=darkblue    ctermbg=none
hi magnus_info_sel          ctermfg=white       ctermbg=darkblue
hi magnus_featured          ctermfg=darkyellow  ctermbg=none        cterm=none
hi magnus_featured_sel      ctermfg=white       ctermbg=darkyellow  cterm=none

hi magnus_value             ctermfg=darkcyan    ctermbg=none
hi magnus_line              ctermfg=grey        ctermbg=grey
hi magnus_window            ctermfg=white       ctermbg=black
hi magnus_bar               ctermfg=black       ctermbg=grey        cterm=none
hi magnus_bar_inactive      ctermfg=black       ctermbg=grey        cterm=none

hi! link Normal             magnus_normal
hi! link Comment            magnus_normal_italic
hi! link Constant           magnus_value
hi! link Identifier         magnus_normal
hi! link Statement          magnus_featured
hi! link PreProc            magnus_featured
hi! link Type               magnus_featured
hi! link Special            magnus_normal 
hi! link SpecialChar        magnus_value
hi! link Underlined         magnus_info
hi! link Ignore             magnus_normal
hi! link Error              magnus_danger_sel
hi! link Todo               magnus_info
hi! link ColorColumn        magnus_line 
hi! link Pmenu              magnus_window
hi! link PmenuSel           magnus_featured_sel 
hi! link MatchParen         magnus_featured_sel
hi! link Normal             magnus_normal
hi! link String             magnus_value
hi! link Character          magnus_value
hi! link Number             magnus_value
hi! link Boolean            magnus_value
hi! link Float              magnus_value
hi! link Function           magnus_featured
hi! link Conditional        magnus_featured
hi! link Repeat             magnus_featured
hi! link Label              magnus_featured
hi! link Operator           magnus_featured
hi! link Keyword            magnus_normal
hi! link Exception          magnus_normal
hi! link Include            magnus_featured
hi! link Define             magnus_featured
hi! link Macro              magnus_featured
hi! link PreCondit          magnus_featured
hi! link StorageClass       magnus_featured
hi! link Structure          magnus_featured
hi! link Typedef            magnus_featured
hi! link Delimiter          magnus_normal
hi! link SpecialComment     magnus_info
hi! link Debug              magnus_info
hi! link ErrorMsg           magnus_danger_sel
hi! link Visual             magnus_featured_sel
hi! link NonText            magnus_normal
hi! link Search             magnus_normal_sel
hi! link IncSearch          magnus_featured_sel
hi! link Question           magnus_info_sel
hi! link MatchParen         magnus_normal
hi! link LineNr             magnus_normal
hi! link StatusLine         magnus_bar
hi! link StatusLineNC       magnus_bar_inactive
hi! link VertSplit          magnus_line
hi! link PmenuSbar          magnus_line
hi! link PmenuThumb         magnus_featured_sel
hi! link WildMenu           magnus_featured_sel
hi! link ModeMsg            magnus_info_sel
hi! link SpecialKey         magnus_featured
hi! link MoreMsg            magnus_info_sel
hi! link SpellBad           magnus_warning_sel
hi! link SpellCap           magnus_warning_sel
hi! link SpellLocal         magnus_warning_sel
hi! link SpellRare          magnus_warning_sel
hi! link TabLine            magnus_normal
hi! link TabLineFill        magnus_normal
hi! link TabLineSel         magnus_featured_sel
hi! link Title              magnus_info
hi! link WarningMsg         magnus_warning_sel

hi! link Directory          magnus_normal
hi! link CursorLine         magnus_normal_sel 

hi! Conceal             ctermfg=red 
"hi! Cursor              ctermbg=red
hi! CursorIM            ctermbg=red
hi! CursorColumn        ctermbg=red
hi! DiffAdd             ctermbg=red
hi! DiffChange          ctermbg=red
hi! DiffDelete          ctermbg=red
hi! DiffText            ctermbg=red
hi! Fold                ctermbg=red
hi! FoldColumn          ctermbg=red
hi! SignColumn          ctermbg=red
hi! VisualNOS           ctermbg=red
