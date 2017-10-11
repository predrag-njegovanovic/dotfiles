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
Plugin 'vim-syntastic/syntastic'
Plugin 'slashmili/alchemist.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-rails'

call vundle#end()
filetype plugin indent on

"Disable arrow keys"
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

"Leader key"
let mapleader=","


"Spaces and Tabs"

syntax enable
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

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
set smartindent
set cindent

"Airline"
let g:airline_theme="gruvbox"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

"Vim-indent"
let g:indentLines_setColors=0

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

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

"Split windows mapping"
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
"Moving"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
"Resizing"


"Identation mapping"
inoremap <TAB> <C-T>
inoremap <S-TAB> <C-D>
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

"Tab navigation"
nnoremap <C-t> <Esc>:tabnew<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab> :tabnext<CR>
inoremap <C-t> :tabnew<CR>i

