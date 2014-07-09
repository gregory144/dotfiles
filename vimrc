set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tjennings/git-grep-vim'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'tmhedberg/matchit'
Bundle 'Lokaltog/vim-easymotion'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

syntax enable

" smart searching
set ignorecase
set smartcase
set incsearch
set hlsearch

" show line numbers
set number
set relativenumber

" tab = 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" show the status line always
set laststatus=2

" when moving vertically keep X lines above/below the cursor
set so=7

" ignore VCS files
set wildignore+=.git\*,.hg\*,.svn\*
set wildignore+=*/tmp/*
set wildignore+=*/node_modules/*

" show current position
set ruler

" hide an abandoned butter
set hid

" backspace should work like you'd think it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" " How many tenths of a second to blink when matching brackets
set mat=2

" enable 256 colors
set t_Co=256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Auto indent
set ai
" Smart indent
set si

try
  colorscheme desert
catch
endtry

set background=dark

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" Mappings


" Open Ack and put the cursor in the right position
map <leader>g :GitGrep 

" Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap <leader>s2 <Plug>(easymotion-s2)

nmap <leader>sf <Plug>(easymotion-f)
nmap <leader>sF <Plug>(easymotion-F)
nmap <leader>st <Plug>(easymotion-t)
nmap <leader>sT <Plug>(easymotion-T)
nmap <leader>sw <Plug>(easymotion-w)
nmap <leader>sW <Plug>(easymotion-W)
nmap <leader>sb <Plug>(easymotion-b)
nmap <leader>sB <Plug>(easymotion-B)
nmap <leader>se <Plug>(easymotion-e)
nmap <leader>sE <Plug>(easymotion-E)
nmap <leader>sge <Plug>(easymotion-ge)
nmap <leader>sgE <Plug>(easymotion-gE)
nmap <leader>sj <Plug>(easymotion-j)
nmap <leader>sk <Plug>(easymotion-k)
nmap <leader>sn <Plug>(easymotion-n)
nmap <leader>sN <Plug>(easymotion-N)
nmap <leader>ss    <Plug>(easymotion-s)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1
