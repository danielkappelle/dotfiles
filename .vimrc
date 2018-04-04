set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'



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

""""""""""""""""""""""
""" Configuration: """
""""""""""""""""""""""

""" General
set autoindent
set wrap
set nolist
set nocompatible
set linebreak
set breakindent
set shell=/bin/bash
set foldnestmax=2
set foldmethod=syntax
set foldlevel=1
set scrolloff=5
let mapleader = "\<space>"
syntax enable
set hidden
set history=10000
set showmatch
set incsearch
set hlsearch
set ignorecase smartcase
set nojoinspaces
set autoread
set nu
set backspace=2

""" Key bindings
nnoremap <leader>n<leader> :NERDTreeToggle<CR>
nnoremap <leader>rs :w<CR>:source ~/.vimrc<CR>
""" Navigation
inoremap hj <esc>
inoremap HJ <esc>
inoremap Hj <esc>

"Split position
" Split navigation
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

""" Colorscheme
set background=light
let g:solarized_termcolors=256
set t_Co=256 
colorscheme solarized
