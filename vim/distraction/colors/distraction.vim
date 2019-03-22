" Vim color file
" Maintainer:  Kevin Leptons <kevin.leptons@gmail.com>
" Last Change: 2017 Sept

if exists("syntax_on")
  syntax reset
endif
hi clear

if &bg == "light"
    hi magnus_none              ctermfg=none        ctermbg=none   cterm=none
    hi magnus_normal            ctermfg=red       ctermbg=none
    hi magnus_normal_sel        ctermfg=grey       ctermbg=black  cterm=none
    hi magnus_info              ctermfg=grey        ctermbg=none    cterm=italic
else
    hi magnus_none              ctermfg=none        ctermbg=none   cterm=none
    hi magnus_normal            ctermfg=none        ctermbg=none
    hi magnus_normal_sel        ctermfg=darkgrey       ctermbg=grey   cterm=none
    hi magnus_info              ctermfg=darkgrey        ctermbg=none cterm=italic
endif
hi magnus_danger            ctermfg=darkred     ctermbg=none        cterm=none
hi magnus_danger_sel        ctermfg=white       ctermbg=darkred
hi magnus_warning           ctermfg=yellow      ctermbg=none 
hi magnus_warning_sel       ctermfg=black       ctermbg=yellow
hi magnus_success           ctermfg=darkgreen   ctermbg=none       
hi magnus_success_sel       ctermfg=white       ctermbg=darkgreen       
hi magnus_info_sel          ctermfg=white       ctermbg=darkblue
hi magnus_featured          ctermfg=darkyellow  ctermbg=none        cterm=none
hi magnus_featured_sel      ctermfg=white       ctermbg=darkyellow  cterm=none

hi magnus_value             ctermfg=darkcyan    ctermbg=none
hi magnus_line              ctermfg=grey        ctermbg=grey
hi magnus_window            ctermfg=white       ctermbg=black
hi magnus_bar               ctermfg=black       ctermbg=grey        cterm=none
hi magnus_bar_inactive      ctermfg=black       ctermbg=grey        cterm=none

hi! link Normal             magnus_normal
hi! link Comment            magnus_info
hi! link Constant           magnus_none
hi! link Identifier         magnus_none
hi! link Statement          magnus_none
hi! link PreProc            magnus_none
hi! link Type               magnus_none
hi! link Special            magnus_none 
hi! link SpecialChar        magnus_value
hi! link Underlined         magnus_info
hi! link Ignore             magnus_none
hi! link Error              magnus_danger_sel
hi! link Todo               magnus_info
hi! link ColorColumn        magnus_line 
hi! link Pmenu              magnus_window
hi! link PmenuSel           magnus_featured_sel 
hi! link MatchParen         magnus_featured_sel
hi! link Normal             magnus_normal
hi! link String             magnus_none
hi! link Character          magnus_none
hi! link Number             magnus_none
hi! link Boolean            magnus_none
hi! link Float              magnus_none
hi! link Function           magnus_none
hi! link Conditional        magnus_none
hi! link Repeat             magnus_none
hi! link Label              magnus_none
hi! link Operator           magnus_none
hi! link Keyword            magnus_none
hi! link Exception          magnus_none
hi! link Include            magnus_none
hi! link Define             magnus_none
hi! link Macro              magnus_none
hi! link PreCondit          magnus_none
hi! link StorageClass       magnus_none
hi! link Structure          magnus_none
hi! link Typedef            magnus_none
hi! link Delimiter          magnus_none
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
