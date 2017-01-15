" ****************************
" VIM CONFIGURATION
" by kalyparker
" ****************************


"""""""""""""""""""""""""""""
"  GENERAL BEHAVIOR
"""""""""""""""""""""""""""""
" Encoding
set encoding=utf-8

" stop being strongly vi compatible
set nocompatible

" use backspace as normal way
set bs=2

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Useful settings
set history=500

" Make search case insensitive
set nohlsearch
set incsearch
set ignorecase
set smartcase

" scrolling - 3 lines around cursor
set scrolloff=3 

" Setup Pathogen to manage your plugins
" install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()

"""""""""""""""""""""""""""""
"       LOOKING             "
"""""""""""""""""""""""""""""
" Change colorscheme from default to something else:
" on default install favorite: delek or elflord
" or install solarized - beware pathogen need to be defined before
colorscheme elflord
"let g:solarized_termcolors=256

" background color
set background=dark

" display line and column at the bottom right
set ruler

" paste mode off (ubuntu, need vim-gtk2 or 3)
" use clipboard as normal way
set nopaste
set clipboard=unnamedplus

" no temporary files
set nobackup
set nowritebackup
set noswapfile

" leader key - default \
let mapleader=","


"""""""""""""""""""""""""""""
"        PROGRAMMING        "
"""""""""""""""""""""""""""""
" Indentation and syntax
filetype on 
filetype plugin indent on
syntax on
set autoindent

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Wrap text instead of being on one line
" set lbr
" set wrapmargin=8

" Showing line numbers and length
set number  " show line numbers  
set tw=79   " width of document
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Use 4 spaces instead of tab 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" ==================
" IDE Setup
" ==================
" powerline - look and feel
set rtp+=$HOME/.local/lib/python3.5/site-packages/powerline/bindings/vim/
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
set laststatus=2
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" NERDTree - folder navigation
" for activate tree all the time
"autocmd vimenter * NERDTree
" Toggle NERDTree
map <F8> :NERDTreeToggle<CR>
" Current file in NERDTree
map <F9> :NERDTreeFind<CR>

" ctrlp - for folder navigation
" for changing shortcut
" let g:ctrlp_map = '<leader>c'
let g:ctrlp_max_height = 10
let g:ctrlp_working_path_mode = 'c'
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" ack - for searching in file
" default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" add a mark and search
nmap <leader>j mA:Ack<space>
" add a mark and search for the word under the cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

" jedi - for Python
" for autocompletion, but allow function search body
" autocomplete do the same, test it later !
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
"" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" vim-fugitive: for github
" test it later
"   https://github.com/tpope/vim-fugitive

