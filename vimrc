set encoding=utf-8
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch	"show {} match
set smarttab 
set clipboard+=unnamed
set number
set laststatus=2
set ruler
"set cursorline 
"set hlsearch
""set fdm=indent
set mouse=a 			"can use the mouse
set showmode
syntax enable
set expandtab
"设置鼠标点击折叠fold
"set foldcolumn=1
"set foldmethod=marker
""set foldlevel=1

"set guifont=Monospace\ 12
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11 "config font for gvim ”for gvim
set  background=dark
colorscheme jellybeans
set t_Co=256
set cursorline
set cursorcolumn
:hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white guibg=darkred guifg=white
":hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"=======cuda filetype=====
au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ======================================
" airline
" =====================================
let g:airline_theme='luna'
"let g:airline_powerline_fonts=1
"" open the tabline function, use to see the buffer
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
"let g:airline#extensions#whitesspace#enabled=0
"let g:airline#extensions#whitesspace#symbol='!'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"===================================================
"switch buf 
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
