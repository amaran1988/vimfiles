"===================================================
"           ABBREVIATIONS.VIM
"===================================================
          

:iabbrev @e amardeep.chalmersuniversity@gmail.com
:iabbrev @n Amardeep.A


:iabbrev shmain #!/bin/bash<cr><cr>clear<cr><cr>echo "Bash Directory       : $BASH"<cr>echo "Bash Version         : $BASH_VERSION"<cr>echo "Home Directoy        : $HOME"<cr>echo "Current Directory    : $PWD"<cr>echo "PID                  : $$"<cr>echo ""<cr><cr><cr>i
 

:iabbrev heading "===================================================<esc>yyjpki"                  .

":autocmd BufWritePre,BufRead *.html :normal gg=G " To correct indents during write and read events for html files
":autocmd BufNewFile,BufRead *.html setlocal nowrap " Setting no wrap for both write and read events for html files


" Vimscript file settings ---------------------------- {{{
augroup filetype_vim
    autocmd!
		    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
"

" Abbreviations for functions in C, The last two omaps are to delete commented headings /= format Eg. cih and cah --------- {{{
augroup c_sc
 autocmd!
 autocmd Filetype c :iabbrev cmain <cr>#include<stdio.h><cr>#include<stdlib.h><cr><cr>int main(){<cr><cr>printf("Hello World!")<cr><cr>}
 autocmd FileType c :iabbrev <buffer> iff if ()<left>
 autocmd FileType c :iabbrev <buffer> ef else if ()<left>
 autocmd FileType c :iabbrev <buffer> whilee while ()<left>
 autocmd FileType c :iabbrev <buffer> elsee else ()<left>
 autocmd FileType c :iabbrev <buffer> forr for ()<left>
 autocmd FileType c :onoremap ih :<c-u>execute "normal! ?^//=\\+$\r:nohlsearch\rkvg_"<cr>
 autocmd FileType c :onoremap ah :<c-u>execute "normal! ?^//=\\+$\r:nohlsearch\rg_vkk0"<cr>
augroup END
" }}}


"Abbreviations for python --------------- {{{
augroup python_sc
	autocmd!
	autocmd Filetype python :iabbrev <buffer> iff if:<left>
augroup END
" }}} 



