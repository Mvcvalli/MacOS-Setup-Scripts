" Mason's .vimrc

" Plugin manager (Install if not found)
  	if empty(glob('~/.config/nvim/autoload/plug.vim'))
	 	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
					\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall
  	endif


" Plug in manager, managing them plugs.
 call plug#begin('~/.vim/plugged')
 " Tools
 	Plug	 'junegunn/goyo.vim'
  	Plug 	 'junegunn/limelight.vim'
	Plug 	 'vim-airline/vim-airline'
        Plug     'junegunn/vim-easy-align'
" Color Scheme	
 	Plug	'vim-airline/vim-airline-themes'
	Plug	'morhetz/gruvbox'
 "	Plug	'dikiaap/minimalist'
 "	Plug	'liuchengxu/space-vim-dark'	
	call plug#end()

" Genreal.
	filetype plugin on
	set nocompatible
	set encoding=utf-8
	syntax enable
	filetype plugin indent on
	let mapleader =" "
	set number
	set relativenumber
	set modelines=1
	set showcmd
	set cursorline
	set showmatch
	set mouse=a
	set ruler
	set wrap
	set textwidth=0
	set wrapmargin=0
	set wrapscan
	set backspace=indent,eol,start
	set background=dark
	set showmatch
	set hlsearch
	set incsearch
	set noswapfile
       	set wildmenu
	set wildmode=list:longest,full
	set spell spelllang=en_nz 
	set spell 
	
" Key-bindings
let mapleader = "/"

" Goyo settings
function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nocursorline
    CocDisable
    Limelight
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set cursorline
    Limelight!
endfunction 

" Goyo/limelight integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Pencil 
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Color Settings.
set background=dark cursorline
colorscheme space-vim-dark
hi Comment guifg=#5C6370 ctermfg=59

