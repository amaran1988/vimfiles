

"===================================================
"            FOLD COLUMN TOGGLE
"===================================================

nnoremap <leader>f :call FoldColumnToggle()<cr>

function! FoldColumnToggle()
	if &foldcolumn
		setlocal foldcolumn=0
	else 
		setlocal foldcolumn=4
	endif
endfunction


"===================================================
"           QUICKFIX WINDOW TOGGLE
"===================================================

nnoremap <leader>q :call QuickFixWindowToggle()<cr>

let g:quickfix_open = 0

function! QuickFixWindowToggle()
	if g:quickfix_open
		cclose
		let g:quickfix_open = 0
		execute g:quickfix_returnto_window . "wincmd w"
	else
		let g:quickfix_returnto_window = winnr()
		copen
		let g:quickfix_open = 1
	endif
endfunction



"===================================================
"               NERDtree Toggle
"===================================================

nmap <s-n> :NERDTreeToggle<CR>
nmap <s-i> :NERDTreeShowHidden<CR>


