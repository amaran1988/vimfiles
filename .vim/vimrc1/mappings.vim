
"===================================================
"              NORMAL MODE MAPPINGS
"===================================================

"Unmap the arrow keys in normal and insert mode
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
noremap <up> <Nop>

" To move line downward and upward in the script
nnoremap - ddp
nnoremap = ddkP


" Toggling Line number
nnoremap <leader>N :setlocal number!<cr>

" Deletes the line and goes to insert mode
nnoremap <leader>c ddO

" Deletes the current line and stays in normal mode
nnoremap <leader>d dd

" Edit vimrc mappings, settings and abbreviations file while on a VIM script
nnoremap <leader>va :leftabove vsplit $HOME/.vim/vimrc1/abbreviations.vim<cr>
nnoremap <leader>vs :leftabove vsplit $HOME/.vim/vimrc1/settings.vim<cr>
nnoremap <leader>vm :leftabove vsplit $HOME/.vim/vimrc1/mappings.vim<cr>
nnoremap <leader>vmain :leftabove vsplit $MYVIMRC<cr>
nnoremap <leader>s :source $MYVIMRC<cr>

" Edit the vim_tut file while on a VIM script
nnoremap <leader>vt :rightbelow vsplit ~/VIM_tut/vim_tut<cr>

" Edit the linux tut file while on VIM script
nnoremap <leader>lt :rightbelow vsplit ~/linux_bash_tut/linux_commands<cr>
nnoremap <leader>vg :rightbelow vsplit ~/.vim/plugin/grep-operator.vim<cr>
nnoremap <leader>tg :rightbelow vsplit ~/.vim/plugin/toggle.vim<cr>

" Double quotes for the word
nnoremap <leader>" <esc>eli"<esc>bi"<esc>lel

" Single quotes for the word
nnoremap <leader>' <esc>eli'<esc>bi'<esc>lel

" Space after line
nnoremap <leader>o o<esc>
nnoremap <leader>\ 0kdd

" Stop highlighting the search options
nnoremap <leader>n :nohlsearch<cr>

" To automatically correct the whitespaces when saving the file for certain
" programs
augroup DeleteWhiteSpace
	autocmd!
	autocmd BufWritePre *.py,*.c,*.f90,*.js :call <SID>StripTrailingWhiteSpaces()
augroup END

" Removing trailing whitespaces.
nnoremap <leader>w :call <SID>StripTrailingWhiteSpaces()<cr>

function! <SID>StripTrailingWhiteSpaces()
" Save last search, and cursor position
				let _s=@/
				let l=line(".")
				let c=col(".")
" Delete the trailing white spaces
				%s/\s\+$//e
" Restore previous search history and cursor position
				let @/=_s
				call cursor(l,c)
endfunction


" Removing blank lines in the whole script
nnoremap <leader>qq :g/^$/d<cr>


nnoremap <leader>ts :set list<cr><bar>:set expandtab<cr><bar>:retab!<cr>
nnoremap <leader>st :set list<cr><bar>:set noexpandtab<cr><bar>:retab!<cr>

"nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cword>")) . " ."<cr>:copen<cr>
"

"===================================================
"              INSERT MODE MAPPINGS
"===================================================


inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>


" To change lower to uppercase and vice-versa
inoremap <c-u> <esc>viwU<esc>i
inoremap <c-l> <esc>viwui<esc>i



"===================================================
"              VISUAL MODE MAPPINGS
"===================================================

"Entering Single and Double Quotes for the selected line ----- {{{
vnoremap q <esc>:call QuickWrap("'")<cr>
vnoremap Q <esc>:call QuickWrap('"')<cr>

function! QuickWrap(wrapper)
		let l:w = a:wrapper
		let l:inside_or_around = (&selection == 'exclusive') ? ('i') : ('a')
		normal `>
		execute "normal " . inside_or_around . escape(w, '\')
		normal `<
		execute "normal i" . escape(w, '\')
		normal `<
endfunction
" }}} 


" Removing quotes for the selected line ------- {{{
vnoremap s <esc>:call StripWrap()<cr>

function! StripWrap()
				  normal `>x`<x
endfunction
" }}} 


"===================================================
"              OPERATOR MAPPINGS
"===================================================

" Deletes the contents inside () + insert mode Eg.place the cursor before (
" and type cin(
:onoremap in( :<c-u>normal! f(vi(<cr> 

" Deletes the contents inside () + insert mode Eg. Place the cursor after )
" and type cil(
:onoremap il( :<c-u>normal! F)vi(<cr>


