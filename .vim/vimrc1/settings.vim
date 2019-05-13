
"===================================================
"            SETTINGS IN VIM 
"===================================================

set number
set numberwidth=4
set autoindent
set smartindent
set cindent
set wrap
" The following values are set equal such that when the user wants to work
" with either space or tab then it is convenient for him/her to change between
" either setup. These are default values. Later in this script, a function is 
" written to change these values according to user preference. 
set tabstop=2
set softtabstop=2
set shiftwidth=2
set pastetoggle=<c-p>


set hlsearch " Highlights all the word that we search for in that script
set incsearch "Highlights search while we type that word

" Enter current millenium
set nocompatible

" To search case insensitively
set ignorecase 

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**


" Display the files during a fuzzy search 
" :b <filename> allows to autocomplete any open buffer 
" and jump to different files
set wildmenu

" Useful for locating functions, definitions and classes 
" !ctags -R . in that folder to create tags in that folder 
" and you can navigate the hierarchy of classes etc
" in different files as well. 
set tags=tags


" Function to change the default value of ts, sw and sts. 
command! -nargs=* Stab call Stab()

function! Stab()
		let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
		if l:tabstop > 0
				let &l:sts = l:tabstop
				let &l:ts = l:tabstop
				let &l:sw = l:tabstop
		endif
		call SummarizeTabs()
endfunction

nnoremap <C-t> :call SummarizeTabs()<cr>

function! SummarizeTabs()
		try
				echohl ModeMsg
				echon 'tabstop = '.&l:ts
				echon ', shiftwidth = '.&l:sw
				echon ', softtabstop = '.&l:sts
				if &l:et
						echon ', expandtab'
				else
						echon ', noexpandtab'
				end
		finally
				echohl None
		endtry
endfunction




" STATUS LINE 
"set laststatus=2            " set the bottom status bar
"
":set statusline=%f         " Path to the file
":set statusline+=\ -\      " Separator
":set statusline+=FileType: " Label
":set statusline+=%y        " Filetype of the file
":set statusline+=\ \ %l    " Current line
":set statusline+=/    " Separator
":set statusline+=%L   " Total lines
"



