set nocompatible
set t_Co=256
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

"Plugins"
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0ng/vim-hybrid'
Plugin 'Yggdroot/indentLine' 
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"Disable arrow keys"
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


"Spaces and Tabs"

syntax enable
set tabstop=4
set softtabstop=4
set expandtab

"UI config"

set number
set showcmd
set lazyredraw
set ruler

"Searching"

set incsearch
set hlsearch

"Disable backing up"

set nobackup
set nowritebackup
set noswapfile

"Identation"

set autoindent

"Airline"
let g:airline_theme="gruvbox"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

"Vim-indent"
let g:indentLines_setColors=0


"Theme"
let g:gruvbox_italic=1
let g:grubvox_italicize_comments=1

set background=dark
colorscheme gruvbox 

"Terminal color problem fix"

if &term =~ '256color'
        set t_ut=
endif

"Nerd tree setup"
map <F2> :NERDTreeToggle<CR>


