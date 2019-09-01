" read a file from file system into a list of lines
let linelist = readfile(somefile)
echo linelist
echo linelist[0]
echo linelist[-1]
let length = len(linelist)
echo length

" write a list of lines into a file in the file system
call writefile(linelist, dest_file)
