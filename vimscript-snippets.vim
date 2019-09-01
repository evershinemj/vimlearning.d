let SessionLoad = 1
if &cp | set nocp | endif
unlet SessionLoad

" in /usr/share/vim/vim80/macros/matchit.vim
if 1
    packadd matchit
endif
" in /usr/share/vim/vim80/macros/justify.vim
packadd justify

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "help"

" in $VIMRUNTIME/pack/dist/opt/matchit/plugin/matchit.vim
nnoremap <silent> %  :<C-U>call <SID>Match_wrapper('',1,'n') <CR>
nnoremap <silent> g% :<C-U>call <SID>Match_wrapper('',0,'n') <CR>
vnoremap <silent> %  :<C-U>call <SID>Match_wrapper('',1,'v') <CR>m'gv``
vnoremap <silent> g% :<C-U>call <SID>Match_wrapper('',0,'v') <CR>m'gv``
onoremap <silent> %  v:<C-U>call <SID>Match_wrapper('',1,'o') <CR>
onoremap <silent> g% v:<C-U>call <SID>Match_wrapper('',0,'o') <CR>

if !exists("b:match_words") || b:match_words == ""
let match_words = ""
" Allow b:match_words = "GetVimMatchWords()" .
elseif b:match_words =~ ":"
let match_words = b:match_words
else
execute "let match_words =" b:match_words
endif

" in $VIMRUNTIME/ftplugin/vim.vim:
let b:match_words =
    \ '\<fu\%[nction]\>:\<retu\%[rn]\>:\<endf\%[unction]\>,' .
    \ '\<\(wh\%[ile]\|for\)\>:\<brea\%[k]\>:\<con\%[tinue]\>:\<end\(w\%[hile]\|fo\%[r]\)\>,' .
    \ '\<if\>:\<el\%[seif]\>:\<en\%[dif]\>,' .
    \ '\<try\>:\<cat\%[ch]\>:\<fina\%[lly]\>:\<endt\%[ry]\>,' .
    \ '\<aug\%[roup]\s\+\%(END\>\)\@!\S:\<aug\%[roup]\s\+END\>,' .
    \ '(:)'

let counter = 0
inoremap <expr> <C-L> ListItem()
inoremap <expr> <C-R> ListReset()

func ListItem()
    let g:counter += 1
    return g:counter . '. '
endfunc

func ListReset()
    let g:counter = 0
    return ''
endfunc

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

