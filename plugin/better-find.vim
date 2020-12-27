set path+=**                           " Search files subdirectories
set wildmenu                           " Allow autocomplete on 'find' command
set wildignore+=**/node_modules/**
set wildignore+=**/dist/**

function! FindFiles(filename)
  let error_file = tempname()
  echo error_file
  silent exe '!fd -t f '.a:filename.' | xargs file | sed "s/:/:1:/" > '.error_file
  set errorformat=%f:%l:%m
  exe "cfile ". error_file
  copen
  if line('$') == 1
    wincmd w
  endif
  call delete(error_file)
endfunction
command! -nargs=1 Find call FindFiles(<q-args>)
nmap <c-p> :Find<space>
