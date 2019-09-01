let s:PATH_SEP	= ':'
let s:FILE_SEP	= '/'
if has("win32") || has("win64") || has("win16") || has("dos32") || has("dos16")
  let s:PATH_SEP	= ';'
  let s:FILE_SEP	= '\'
endif
