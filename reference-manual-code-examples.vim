	:try
	:  throw "oops"
	:catch /.*/
	:  echo "caught" v:exception
	:endtry

    :com -complete=custom,ListUsers -nargs=1 Finger !finger <args>
    :fun ListUsers(A,L,P)
    :    return system("cut -d: -f1 /etc/passwd")
    :endfun

    :com -nargs=1 -bang -complete=customlist,EditFileComplete
			\ EditFile edit<bang> <args>
    :fun EditFileComplete(A,L,P)
    :    return split(globpath(&path, a:A), "\n")
    :endfun
