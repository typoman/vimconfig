" Vim color file - bahman
" Generated by http://bytefluent.com/vivify 2018-12-02
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "bahman"
hi Normal guifg=#d7d7ff guibg=#252634 guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi IncSearch guifg=#ffffff guibg=#ff8700 guisp=#ff8700 gui=NONE ctermfg=15 ctermbg=208 cterm=NONE
hi WildMenu guifg=NONE guibg=#a8a8a8 guisp=#a8a8a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#262626 guibg=#5f5f87 guisp=#5f5f87 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi SpecialComment guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#5f5f87 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Title guifg=#d7d7ff guibg=#262626 guisp=#262626 gui=bold ctermfg=189 ctermbg=235 cterm=bold
hi Folded guifg=#000000 guibg=#875fd7 guisp=#875fd7 gui=NONE ctermfg=16 ctermbg=98 cterm=NONE
hi PreCondit guifg=#ffd700 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Include guifg=#5fffff guibg=NONE guisp=NONE gui=NONE ctermfg=87 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#262626 guibg=NONE guisp=NONE gui=bold ctermfg=235 ctermbg=1 cterm=bold
hi StatusLineNC guifg=#262626 guibg=#5f8787 guisp=#5f8787 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi NonText guifg=#262626 guibg=NONE guisp=NONE gui=NONE ctermfg=235 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#5f0000 guisp=#5f0000 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#a8a8a8 guibg=#870000 guisp=#870000 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi Debug guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#878787 guisp=#878787 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#5fffaf guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#d7ff87 guibg=NONE guisp=NONE gui=bold ctermfg=192 ctermbg=NONE cterm=bold
hi StorageClass guifg=#5f5f87 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Todo guifg=#ffffff guibg=#ff8700 guisp=#ff8700 gui=NONE ctermfg=15 ctermbg=208 cterm=NONE
hi Special guifg=#47BAFF guibg=NONE guisp=NONE gui=NONE ctermfg=93 ctermbg=NONE cterm=NONE
hi LineNr guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#262626 guibg=#ffd700 guisp=#ffd700 gui=bold ctermfg=235 ctermbg=220 cterm=bold
hi Label guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#262626 guibg=NONE guisp=NONE gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi Search guifg=#ffffff guibg=#ff5f00 guisp=#ff5f00 gui=NONE ctermfg=15 ctermbg=202 cterm=NONE
hi Delimiter guifg=#B32D5B guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#A757F3 guibg=NONE guisp=NONE gui=bold ctermfg=55 ctermbg=NONE cterm=bold
hi SpellRare guifg=#d7d7ff guibg=#262626 guisp=#262626 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Comment guifg=#898989 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=italic
hi Character guifg=#a8a8a8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Float guifg=#a8a8a8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number guifg=#d7ff87 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi Boolean guifg=#a8a8a8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Operator guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#121212 guisp=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE
hi TabLineFill guifg=#262626 guibg=#5f8787 guisp=#5f8787 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi WarningMsg guifg=#a8a8a8 guibg=#870000 guisp=#870000 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#262626 guibg=#d7d7ff guisp=#d7d7ff gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#262626 guisp=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#ffffff guibg=#262626 guisp=#262626 gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#303030 guisp=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Function guifg=#00d7ff guibg=NONE guisp=NONE gui=bold ctermfg=45 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#262626 guibg=#a8a8a8 guisp=#a8a8a8 gui=NONE ctermfg=235 ctermbg=248 cterm=NONE
hi PreProc guifg=#00ffaf guibg=NONE guisp=NONE gui=NONE ctermfg=49 ctermbg=NONE cterm=NONE
hi Visual guifg=#262626 guibg=#00d7d7 guisp=#00d7d7 gui=NONE ctermfg=235 ctermbg=44 cterm=NONE
hi MoreMsg guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellCap guifg=#d7d7ff guibg=#262626 guisp=#262626 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#262626 guibg=#5f8787 guisp=#5f8787 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi Exception guifg=#d70087 guibg=NONE guisp=NONE gui=bold ctermfg=162 ctermbg=NONE cterm=bold
hi Keyword guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Type guifg=#0087ff guibg=NONE guisp=NONE gui=bold ctermfg=33 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#875f00 guisp=#875f00 gui=NONE ctermfg=NONE ctermbg=94 cterm=NONE
hi Cursor guifg=#262626 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#d7d7ff guibg=#262626 guisp=#262626 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#a8a8a8 guibg=#870000 guisp=#870000 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#262626 guibg=#5f8787 guisp=#5f8787 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi Constant guifg=#a8a8a8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Tag guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String guifg=#8282E6 guibg=NONE guisp=NONE gui=NONE ctermfg=104 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a8a8a8 guisp=#a8a8a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi MatchParen guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Repeat guifg=#d7005f guibg=NONE guisp=NONE gui=bold ctermfg=161 ctermbg=NONE cterm=bold
hi SpellBad guifg=#d7d7ff guibg=#262626 guisp=#262626 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#ffaf87 guibg=NONE guisp=NONE gui=bold ctermfg=216 ctermbg=NONE cterm=bold
hi Structure guifg=#875fff guibg=NONE guisp=NONE gui=bold ctermfg=99 ctermbg=NONE cterm=bold
hi Macro guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Underlined guifg=#d7d7ff guibg=#262626 guisp=#262626 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#303030 guisp=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLine guifg=#262626 guibg=#5f8787 guisp=#5f8787 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi cursorim guifg=#262626 guibg=#5f5f87 guisp=#5f5f87 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi PythonParam guifg=#d75f87 guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=italic
hi PythonString guifg=#ffd75f guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi pythonClass guifg=#00afff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi pythonFunction guifg=#d700d7 guibg=NONE guisp=NONE gui=NONE ctermfg=164 ctermbg=NONE cterm=NONE
hi pythonSelf guifg=#5fffaf guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=bold
hi SpecialKey guifg=#080808 guibg=#d70087 guisp=#d70087 gui=NONE ctermfg=232 ctermbg=162 cterm=NONE
