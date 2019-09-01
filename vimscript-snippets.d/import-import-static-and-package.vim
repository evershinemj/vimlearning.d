      let b:context_type = s:CONTEXT_AFTER_DOT

      " import or package declaration
      if statement =~# '^\s*\(import\|package\)\s\+'
	let statement = substitute(statement, '\s\+\.', '.', 'g')
	let statement = substitute(statement, '\.\s\+', '.', 'g')
	if statement =~ '^\s*import\s\+'
	  let b:context_type = statement =~# '\<static\s\+' ? s:CONTEXT_IMPORT_STATIC : s:CONTEXT_IMPORT
	  let b:dotexpr = substitute(statement, '^\s*import\s\+\(static\s\+\)\?', '', '')
	else
	  let b:context_type = s:CONTEXT_PACKAGE_DECL
	  let b:dotexpr = substitute(statement, '\s*package\s\+', '', '')
	endif

