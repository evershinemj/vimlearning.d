	:setlocal omnifunc=javacomplete#Complete
" <   Or, use autocmd: >
	:" Only do this part when compiled with support for autocommands.
	:if has("autocmd")
	:  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
	:endif
