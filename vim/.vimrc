"----------------------------
" __      _______ __  __ 
" \ \    / /_   _|  \/  |
"  \ \  / /  | | | \  / |
"   \ \/ /   | | | |\/| |
"    \  /   _| |_| |  | |
"     \/   |_____|_|  |_|
"----------------------------
set nocompatible        
filetype off   
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'suan/vim-instant-markdown'
"themes/colorscheme
Plugin 'rigellute/shades-of-purple.vim'

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

colorscheme shades_of_purple
set termguicolors     " enable true colors support
set shell=/bin/bash
set number relativenumber
set spell
syntax enable
syntax on
set wildmenu
filetype indent on
filetype plugin on
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap j gj
nnoremap k gk
