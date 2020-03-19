let s:guiA0 = "2a2433"
let s:guiA1 = "372f42"
let s:guiA2 = "574b68"
let s:guiA3 = "635775"
let s:guiA4 = "706383"
let s:guiA5 = "857897"
let s:guiA6 = "9a90a7"
let s:guiA7 = "afa7b9"
let s:guiB0 = "8f51e6"
let s:guiB1 = "9d63ee"
let s:guiB2 = "aa75f5"
let s:guiB3 = "b886fd"
let s:guiB4 = "C7a0fe"
let s:guiB5 = "d6b9fe"
let s:guiB6 = "e4d2fe"
let s:guiB7 = "f3ebff"
let s:guiC0 = "7a7171"
let s:guiC1 = "8d8281"
let s:guiC2 = "9f9393"
let s:guiC3 = "b0a6a6"
let s:guiC4 = "c2b8b7"
let s:guiC5 = "d7cccb"
let s:guiC6 = "eae1e1"
let s:guiC7 = "fbf9f9"
let s:guiD0 = "cf504a"
let s:guiD1 = "d95f59"
let s:guiD2 = "ed655e"
let s:guiD3 = "f36f68"
let s:guiD4 = "f87972"
let s:guiD5 = "fc8983"
let s:guiD6 = "ff9e99"
let s:guiD7 = "ffb6b3"

let s:guiAD0 = "3b2835"
let s:guiAD1 = "7c3a3e"
let s:guiAD2 = "a64544"

" Terminal color definitions
let s:cterm00 = "236   "
let s:cterm01 = "237   "
let s:cterm02 = "240   "
let s:cterm03 = "242   "
let s:cterm04 = "245   "
let s:cterm05 = "141   "
let s:cterm06 = "183   "
let s:cterm07 = "231   "
let s:cterm08 = "98    "
let s:cterm09 = "203   "
let s:cterm0A = "210   "
let s:cterm0B = "243   "
let s:cterm0C = "217   "
let s:cterm0D = "210   "
let s:cterm0E = "141   "
let s:cterm0F = "135   "

" runtime bundle/iceberg.vim/colors/iceberg.vim
runtime colors/iceberg.vim

let g:colors_name = 'crystalberg'

fun! <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . s:gui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . s:gui(a:guibg)
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Return GUI color
fun! s:gui(color)
  return a:color
endfun

" Return terminal color
fun! s:cterm(color)
  return a:color
endfun


" Vim editor colors
call <sid>hi("ColorColumn",   "",       s:guiA1,    "",         s:cterm01,  "none")
call <sid>hi("Conceal",       s:guiD5,  s:guiA0,    s:cterm0D,  s:cterm00,  "")
call <sid>hi("Cursor",        s:guiA0,  s:guiAD1,   s:cterm00,  s:cterm09,  "")
call <sid>hi("CursorColumn",  "",       s:guiA1,    "",         s:cterm01,  "none")
call <sid>hi("CursorLine",    "",       s:guiAD0,   "",         s:cterm01,  "none")
call <sid>hi("CursorLineNr",  s:guiA2,  s:guiAD0,    s:cterm02,  s:cterm01,  "")
call <sid>hi("Debug",         s:guiB0,  "",         s:cterm08,  "",         "")
call <sid>hi("Directory",     s:guiD5,  "",         s:cterm0D,  "",         "")
call <sid>hi("EndOfBuffer",   s:guiB4,  s:guiA0,    s:cterm06,  s:cterm00,  "")
call <sid>hi("Error",         s:guiB5,  s:guiA0,    s:cterm06,  s:cterm00,  "")
call <sid>hi("ErrorMsg",      s:guiD5,  s:guiA0,    s:cterm08,  s:cterm00,  "")
call <sid>hi("FoldColumn",    "",       s:guiA1,    "",         s:cterm01,  "")
call <sid>hi("Folded",        s:guiA3,  s:guiA1,    s:cterm03,  s:cterm01,  "")
call <sid>hi("IncSearch",     s:guiA1,  s:guiD2,    s:cterm01,  s:cterm09,  "none")
call <sid>hi("Italic",        "",       "",         "",         "",         "none")
call <sid>hi("LineNr",        s:guiA2,  s:guiA0,    s:cterm02,  s:cterm00,  "")
call <sid>hi("Macro",         s:guiB0,  "",         s:cterm08,  "",         "")
call <sid>hi("MatchParen",    s:guiA0,  s:guiA3,    s:cterm00,  s:cterm03,  "")
call <sid>hi("ModeMsg",       s:guiC0,  "",         s:cterm0B,  "",         "")
call <sid>hi("MoreMsg",       s:guiC0,  "",         s:cterm0B,  "",         "")
call <sid>hi("NonText",       s:guiA3,  "",         s:cterm03,  "",         "")
call <sid>hi("Normal",        s:guiB5,  s:guiA0,    s:cterm06,  s:cterm00,  "")
call <sid>hi("PMenu",         s:guiA4,  s:guiA1,    s:cterm04,  s:cterm01,  "none")
call <sid>hi("PMenuSel",      s:guiA1,  s:guiA4,    s:cterm01,  s:cterm04,  "")
call <sid>hi("Question",      s:guiD5,  "",         s:cterm0D,  "",         "")
call <sid>hi("Search",        s:guiA3,  s:guiD4,    s:cterm03,  s:cterm0A,  "")
call <sid>hi("SignColumn",    s:guiA3,  s:guiA1,    s:cterm03,  s:cterm01,  "")
call <sid>hi("SpecialKey",    s:guiA3,  "",         s:cterm03,  "",         "")
call <sid>hi("StatusLine",    s:guiA6,  s:guiA2,    s:cterm04,  s:cterm02,  "none")
call <sid>hi("StatusLineNC",  s:guiA3,  s:guiA1,    s:cterm03,  s:cterm01,  "none")
call <sid>hi("TabLine",       s:guiA3,  s:guiA1,    s:cterm03,  s:cterm01,  "none")
call <sid>hi("TabLineFill",   s:guiA3,  s:guiA1,    s:cterm03,  s:cterm01,  "none")
call <sid>hi("TabLineSel",    s:guiC0,  s:guiA1,    s:cterm0B,  s:cterm01,  "none")
call <sid>hi("Title",         s:guiD5,  "",         s:cterm0D,  "",         "none")
call <sid>hi("TooLong",       s:guiB0,  "",         s:cterm08,  "",         "")
call <sid>hi("Underlined",    s:guiB3,  "",         s:cterm08,  "",         "")
call <sid>hi("VertSplit",     s:guiA1,  s:guiA1,    s:cterm01,  s:cterm01,  "none")
call <sid>hi("Visual",        "",       s:guiA2,    "",         s:cterm02,  "")
call <sid>hi("VisualNOS",     s:guiB0,  "",         s:cterm08,  "",         "")
call <sid>hi("WarningMsg",    s:guiB0,  "",         s:cterm08,  "",         "")
call <sid>hi("WildMenu",      s:guiB0,  "",         s:cterm08,  "",         "")

" Standard Syntax Highlighting
call <sid>hi("Comment",       s:guiA2,   "",         s:cterm03,  "",         "")
call <sid>hi("Conditional",   s:guiB2,   "",         s:cterm0E,  "",         "") " None
call <sid>hi("Delimiter",     s:guiA2,   "",         s:cterm0F,  "",         "") " c6c8d1
call <sid>hi("Exception",     s:guiD1,  "",         s:cterm08,  "",         "")
call <sid>hi("Function",      s:guiD6,   "",         s:cterm0C,  "",         "") " 84a0c6
call <sid>hi("Identifier",    s:guiB4,   "",         s:cterm07,  "",         "none") " 89b8c2
call <sid>hi("Include",       s:guiD1,   "",         s:cterm0D,  "",         "")
call <sid>hi("Operator",      s:guiAD2,   "",         s:cterm0A,  "",         "none") "84a0c6
call <sid>hi("PreProc",       s:guiB1,   "",         s:cterm06,  "",         "none")
call <sid>hi("Repeat",        s:guiB2,   "",         s:cterm0A,  "",         "") " None
call <sid>hi("Special",       s:guiB1,   "",         s:cterm05,  "",         "")
call <sid>hi("Statement",     s:guiB7,   "",         s:cterm07,  "none",     "none") " 84a0c6
call <sid>hi("StorageClass",  s:guiD4,   "",         s:cterm06,  "",         "none")
call <sid>hi("String",        s:guiA5,   "",         s:cterm0C,  "",         "") " 89b8c2
call <sid>hi("Structure",     s:guiD4,   "",         s:cterm06,  "",         "none")
call <sid>hi("Type",          s:guiD2,   "",         s:cterm06,  "",         "none")
call <sid>hi("Todo",          s:guiC3,   s:guiA2,    s:cterm06,  "",         "none")

" Python highlighting
call <sid>hi("pythonOperator",  s:guiB2, "", s:cterm0E, "", "")
call <sid>hi("pythonRepeat",    s:guiB2, "", s:cterm0E, "", "")
call <sid>hi("pythonEscape",    s:guiD2, "", s:cterm0E, "", "")
exe 'hi link pythonInclude Include'
exe 'hi link pythonStatement Statement'
exe 'hi link pythonConditional Conditional'
exe 'hi link pythonRepeat Repeat'
exe 'hi link pythonException Exception'
exe 'hi link pythonFunction Function'
exe 'hi link pythonBrackets Delimiter'

" GitGutter highlighting
call <sid>hi("GitGutterAdd",            s:guiC0,    s:guiA0,    s:cterm0B,  s:cterm01,  "")
call <sid>hi("GitGutterChange",         s:guiD5,    s:guiA0,    s:cterm0D,  s:cterm01,  "")
call <sid>hi("GitGutterDelete",         s:guiB0,    s:guiA0,    s:cterm08,  s:cterm01,  "")
call <sid>hi("GitGutterChangeDelete",   s:guiB2,    s:guiA0,    s:cterm0E,  s:cterm01,  "")
