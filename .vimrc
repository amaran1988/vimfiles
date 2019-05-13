"=================================================            
"           THE VIM MAIN FILE
"=================================================            
"created on may-3rd-2019 by Amardeep A 


" Setting the leader and local leader
let mapleader = ","
let maplocalleader = ",," 


syntax on
filetype plugin indent on



source $HOME/.vim/vimrc1/settings.vim
source $HOME/.vim/vimrc1/netrw.vim
source $HOME/.vim/vimrc1/mappings.vim
source $HOME/.vim/vimrc1/abbreviations.vim
source $HOME/.vim/plugin/grep-operator.vim
source $HOME/.vim/plugin/toggle.vim



" Source a local vimrc if it exists
if filereadable(expand("$HOME/.vimrc.local"))
   source $HOME/.vimrc.local
endif



call plug#begin('~/.vim/plugged')
"	Plug 'trevordmiller/nova-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'scrooloose/nerdcommenter'
	Plug 'arcticicestudio/nord-vim'
"	Plug 'imhartington/oceanic-next'
	Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'
	Plug 'tpope/vim-fugitive'
	Plug 'tomasr/molokai'
	Plug 'ciaranm/inkpot'
call plug#end()


" NERDtree commands for automatic display when opening vim and quitting
augroup nerdy
		autocmd!
		autocmd vimenter * NERDTree
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

"let NERDTreeMinimalUI=1
"let NERDTreeDirArrows=1

nnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>
vnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>



