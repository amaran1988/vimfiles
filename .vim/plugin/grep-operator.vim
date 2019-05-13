
"===================================================
"      GREP OPERATOR FOR SEARCH IN VIM
"===================================================
"
"
" Some of the examples of use by this operator
"viw<leader>g: Visually select a word, then grep for it.
"<leader>g4w: Grep for the next four words.
"<leader>gt;: Grep until semicolon.
"<leader>gi[: Grep inside square brackets.


nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>


function! s:GrepOperator(type)
		
		let unnamed_register_history = @@

    if a:type ==# 'v'
        execute "normal! `<v`>y"
    elseif a:type ==# 'char'
        execute "normal! `[v`]y"
    else
        return
    endif

   silent execute "grep! -R " . shellescape(@@) . " ." 
	 copen
	 let @@ = unnamed_register_history
endfunction


