" Vim color file
" Maintainer:  Kevin Leptons <kevin.leptons@gmail.com>
" Last Change: 2019 Sept

if exists("syntax_on")
  syntax reset
endif
hi clear

hi magnus_normal            ctermfg=none       ctermbg=none        cterm=none
hi magnus_normal_sel        ctermfg=white      ctermbg=grey        cterm=none
hi magnus_danger            ctermfg=red        ctermbg=none        cterm=none
hi magnus_danger_sel        ctermfg=white      ctermbg=red
hi magnus_warning           ctermfg=darkyellow ctermbg=none 
hi magnus_warning_sel       ctermfg=black      ctermbg=darkyellow
hi magnus_success           ctermfg=green      ctermbg=none       
hi magnus_success_sel       ctermfg=white      ctermbg=green       
hi magnus_featured          ctermfg=darkyellow ctermbg=none        cterm=none
hi magnus_featured_sel      ctermfg=white      ctermbg=darkyellow  cterm=none
hi magnus_value             ctermfg=cyan       ctermbg=none
hi magnus_line              ctermfg=grey       ctermbg=grey
hi magnus_window            ctermfg=white      ctermbg=black
hi magnus_bar               ctermfg=black      ctermbg=grey        cterm=none
hi magnus_bar_inactive      ctermfg=black      ctermbg=grey        cterm=none

hi! link Normal             magnus_normal
hi! link Comment            magnus_normal
hi! link Constant           magnus_normal
hi! link Identifier         magnus_normal
hi! link Statement          magnus_normal
hi! link PreProc            magnus_normal
hi! link Type               magnus_normal
hi! link Special            magnus_normal 
hi! link SpecialChar        magnus_value
hi! link Underlined         magnus_normal
hi! link Ignore             magnus_normal
hi! link Error              magnus_danger_sel
hi! link Todo               magnus_normal
hi! link ColorColumn        magnus_line 
hi! link Pmenu              magnus_window
hi! link PmenuSel           magnus_featured_sel 
hi! link MatchParen         magnus_featured_sel
hi! link Normal             magnus_normal
hi! link String             magnus_normal
hi! link Character          magnus_normal
hi! link Number             magnus_normal
hi! link Boolean            magnus_normal
hi! link Float              magnus_normal
hi! link Function           magnus_normal
hi! link Conditional        magnus_normal
hi! link Repeat             magnus_normal
hi! link Label              magnus_normal
hi! link Operator           magnus_normal
hi! link Keyword            magnus_normal
hi! link Exception          magnus_normal
hi! link Include            magnus_normal
hi! link Define             magnus_normal
hi! link Macro              magnus_normal
hi! link PreCondit          magnus_normal
hi! link StorageClass       magnus_normal
hi! link Structure          magnus_normal
hi! link Typedef            magnus_normal
hi! link Delimiter          magnus_normal
hi! link SpecialComment     magnus_normal
hi! link Debug              magnus_normal
hi! link ErrorMsg           magnus_danger_sel
hi! link Visual             magnus_featured_sel
hi! link NonText            magnus_normal
hi! link Search             magnus_normal_sel
hi! link IncSearch          magnus_featured_sel
hi! link Question           magnus_normal_sel
hi! link MatchParen         magnus_normal
hi! link LineNr             magnus_normal
hi! link StatusLine         magnus_bar
hi! link StatusLineNC       magnus_bar_inactive
hi! link VertSplit          magnus_line
hi! link PmenuSbar          magnus_line
hi! link PmenuThumb         magnus_featured_sel
hi! link WildMenu           magnus_featured_sel
hi! link ModeMsg            magnus_normal_sel
hi! link SpecialKey         magnus_featured
hi! link MoreMsg            magnus_normal_sel
hi! link SpellBad           magnus_warning_sel
hi! link SpellCap           magnus_warning_sel
hi! link SpellLocal         magnus_warning_sel
hi! link SpellRare          magnus_warning_sel
hi! link TabLine            magnus_normal
hi! link TabLineFill        magnus_normal
hi! link TabLineSel         magnus_featured_sel
hi! link Title              magnus_normal
hi! link WarningMsg         magnus_warning_sel

hi! link Directory          magnus_normal
hi! link CursorLine         magnus_normal_sel 

hi! Conceal             ctermfg=red 
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
