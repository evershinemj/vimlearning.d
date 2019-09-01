let SessionLoad = 1
if &cp | set nocp | endif
nmap  3b
vmap  3b
nmap  3w
vmap  3w
map   W
vmap ,xc !boxes -f $BOXES_SYS_CONF -d pound-cmt -r
nmap ,xc !!boxes -f $BOXES_SYS_CONF -d pound-cmt -r
vmap ,mc !boxes -f $BOXES_SYS_CONF -d pound-cmt
nmap ,mc !!boxes -f $BOXES_SYS_CONF -d pound-cmt
noremap <silent> ,cc :cclose
noremap <silent> ,co :copen
noremap <silent> ,cl :clast
noremap <silent> ,cf :cfirst
noremap <silent> ,cp :cprevious
noremap <silent> ,cn :cnext
vmap ,gq :s/\s\+/ /ggvgq
nmap ,gq :%s/\s\+/ /ggq1G
map ,zsh :tabedit $ZSH
map ,br :tabedit ~/.bashrc
vmap ,rmo !boxes -f $BOXES_SYS_CONF -d mouse -r
vmap ,mo !boxes -f $BOXES_SYS_CONF -d mouse
nmap ,rmo !!boxes -f $BOXES_SYS_CONF -d mouse -r
nmap ,mo !!boxes -f $BOXES_SYS_CONF -d mouse
vmap ,rsu !boxes -f $BOXES_SYS_CONF -d sunset -r
vmap ,su !boxes -f $BOXES_SYS_CONF -d sunset
nmap ,rsu !!boxes -f $BOXES_SYS_CONF -d sunset -r
nmap ,su !!boxes -f $BOXES_SYS_CONF -d sunset
vmap ,rsp !boxes -f $BOXES_SYS_CONF -d spring -r
vmap ,sp !boxes -f $BOXES_SYS_CONF -d spring
nmap ,rsp !!boxes -f $BOXES_SYS_CONF -d spring -r
nmap ,sp !!boxes -f $BOXES_SYS_CONF -d spring
vmap ,ruc !boxes -f $BOXES_SYS_CONF -d unicornsay -r
vmap ,uc !boxes -f $BOXES_SYS_CONF -d unicornsay
nmap ,ruc !!boxes -f $BOXES_SYS_CONF -d unicornsay -r
nmap ,uc !!boxes -f $BOXES_SYS_CONF -d unicornsay
let s:cpo_save=&cpo
set cpo&vim
xmap S <Plug>VSurround
vmap [% [%m'gv``
nnoremap <silent> [B :bfirst
nnoremap <silent> [b :bprevious
noremap \z :tabedit ~/.zshrc
noremap \s :tabedit /usr/local/src/
noremap \n :nohlsearch
noremap \b :tabedit ~/.bash_profile
map \p i(ea)
vmap ]% ]%m'gv``
nnoremap <silent> ]B :blast
nnoremap <silent> ]b :bnext
vmap _j :call Justify('tw',4)
nmap _j :%call Justify('tw',4)
vmap a% [%v]%
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
omap <F7> a{
nnoremap <silent> <F10> :!ctags -R 
nnoremap <silent> <F9> =
nnoremap <silent> <F8> :TlistToggle
nnoremap <silent> <F7> 
nnoremap <silent> <F5> :tabedit ~/.vim/ftplugin/
nnoremap <silent> <F4> :tabedit ~/.vim/plugin/
nnoremap <silent> <F3> :tabedit ~/.vimrc
nnoremap <silent> <F2> Godate: :read !date
map <Down> gj
map <Up> gk
inoremap <silent>  <Left>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent>  <Right>
imap  <Plug>Isurround
inoremap #in #include<stdio.h>int main(){}ki	
inoremap ## ############################################################
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
cnoremap <expr> /v getcmdtype() == '/' ? '\v' : '/v'
cnoremap <expr> /c getcmdtype() == '/' ? '\c' : '/c'
cnoremap <expr> // getcmdtype() == '/' ? '\c' : '//'
inoremap </bo </body>
inoremap <bo <body></body>F>a
inoremap </ti </title>
inoremap <ti <title></title>F>a
inoremap </he </head>
inoremap <he <head></head>F>a
inoremap <ht <html></html>F>a
inoremap </ht </html>
map! incs incsearch
abbr dev development
iabbr resp responsibility
iabbr mem memory
iabbr happi happiness
abbr teh the
iabbr #e  *************************************************/
iabbr #b /*************************************************
inoreabbr -- ---------------------------------------------------------
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=2
set cinwords=if,else,while,do,for,switch,until,def,class
set cmdheight=3
set complete=.,w,b,u,i
set completefunc=CompleteMonths
set dictionary=/usr/share/dict/words
set errorbells
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set foldclose=all
set formatoptions=tcqlro
set highlight=e:Search,M:Directory
set hlsearch
set ignorecase
set iskeyword=@,48-57,_,192-255,-
set keymodel=startsel
set laststatus=2
set listchars=eol:$,tab:t~,trail:@,extends:>
set modelines=3
set nrformats=bin,hex,alpha
set operatorfunc=<SNR>42_go
set path=.,/usr/include,,,..,/usr/*/include
set previewheight=5
set ruler
set runtimepath=~/.vim,~/.vim/pack/wangxueming/start/complete,~/.vim/pack/tpope/start/surround,~/.vim/pack/tpope/start/commentary,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vim80/pack/dist/opt/matchit,/usr/share/vim/vim80/pack/dist/opt/justify,/usr/share/vim/vimfiles/after,~/.vim/after
set scrolloff=5
set selectmode=key
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set sidescroll=10
set sidescrolloff=10
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set splitright
set statusline=%8.19f
set verbosefile=~/verbosefile
set visualbell
set nowarn
set wildmenu
set window=0
set winheight=2
set winminheight=2
set nowrapscan
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/vimlearning.d
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 initialization.txt
badd +1 tmp
badd +0 messages-redir-tmp.log
badd +1 ~/profile.d/vim.rc
argglobal
silent! argdel *
$argadd initialization.txt
edit initialization.txt
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 12 + 21) / 42)
exe '2resize ' . ((&lines * 12 + 21) / 42)
exe '3resize ' . ((&lines * 12 + 21) / 42)
argglobal
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch,until,def,class
setlocal colorcolumn=
setlocal comments=fb:-,fb:*
setlocal commentstring=
setlocal complete=.,w,b,u,i
setlocal completefunc=CompleteMonths
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=3
setlocal foldlevel=3
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqro
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex,alpha
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 121 - ((2 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
121
normal! 09|
wincmd w
argglobal
if bufexists('messages-redir-tmp.log') | buffer messages-redir-tmp.log | else | edit messages-redir-tmp.log | endif
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch,until,def,class
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,i
setlocal completefunc=CompleteMonths
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'log'
setlocal filetype=log
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=3
setlocal foldlevel=3
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqlro
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex,alpha
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'log'
setlocal syntax=log
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
argglobal
if bufexists('~/profile.d/vim.rc') | buffer ~/profile.d/vim.rc | else | edit ~/profile.d/vim.rc | endif
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch,until,def,class
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,i
setlocal completefunc=CompleteMonths
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'rc'
setlocal filetype=rc
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=3
setlocal foldlevel=3
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcqlro
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-,$,{,}
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex,alpha
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 759 - ((6 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
759
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 12 + 21) / 42)
exe '2resize ' . ((&lines * 12 + 21) / 42)
exe '3resize ' . ((&lines * 12 + 21) / 42)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=2 winwidth=20 shortmess=filnxtToO
set winminheight=2 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
