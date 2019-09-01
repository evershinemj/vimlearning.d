let s:RE_BRACKETS	= '\%(\s*\[\s*\]\)'
let s:RE_IDENTIFIER	= '[a-zA-Z_$][a-zA-Z0-9_$]*'
let s:RE_QUALID		= s:RE_IDENTIFIER. '\%(\s*\.\s*' .s:RE_IDENTIFIER. '\)*'

let s:RE_REFERENCE_TYPE	= s:RE_QUALID . s:RE_BRACKETS . '*'
let s:RE_TYPE		= s:RE_REFERENCE_TYPE

let s:RE_TYPE_ARGUMENT	= '\%(?\s\+\%(extends\|super\)\s\+\)\=' . s:RE_TYPE
let s:RE_TYPE_ARGUMENTS	= '<' . s:RE_TYPE_ARGUMENT . '\%(\s*,\s*' . s:RE_TYPE_ARGUMENT . '\)*>'
let s:RE_TYPE_WITH_ARGUMENTS_I	= s:RE_IDENTIFIER . '\s*' . s:RE_TYPE_ARGUMENTS
let s:RE_TYPE_WITH_ARGUMENTS	= s:RE_TYPE_WITH_ARGUMENTS_I . '\%(\s*' . s:RE_TYPE_WITH_ARGUMENTS_I . '\)*'

let s:RE_TYPE_MODS	= '\%(public\|protected\|private\|abstract\|static\|final\|strictfp\)'
let s:RE_TYPE_DECL_HEAD	= '\(class\|interface\|enum\)[ \t\n\r]\+'
let s:RE_TYPE_DECL	= '\<\C\(\%(' .s:RE_TYPE_MODS. '\s\+\)*\)' .s:RE_TYPE_DECL_HEAD. '\(' .s:RE_IDENTIFIER. '\)[< \t\n\r]'

let s:RE_ARRAY_TYPE	= '^\s*\(' .s:RE_QUALID . '\)\(' . s:RE_BRACKETS . '\+\)\s*$'
let s:RE_SELECT_OR_ACCESS	= '^\s*\(' . s:RE_IDENTIFIER . '\)\s*\(\[.*\]\)\=\s*$'
let s:RE_ARRAY_ACCESS	= '^\s*\(' . s:RE_IDENTIFIER . '\)\s*\(\[.*\]\)\+\s*$'
let s:RE_CASTING	= '^\s*(\(' .s:RE_QUALID. '\))\s*\(' . s:RE_IDENTIFIER . '\)\>'

let s:RE_KEYWORDS	= '\<\%(' . join(s:KEYWORDS, '\|') . '\)\>'

