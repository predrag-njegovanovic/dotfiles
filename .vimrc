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
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'Valloric/YouCompleteMe'
Plugin 'whatyouhide/vim-gotham'
Plugin 'kien/ctrlp.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'pangloss/vim-javascript'
Plugin 'ajh17/Spacegray.vim'

call vundle#end()
filetype plugin indent on

"Disable arrow keys"
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

"Leader key"
let mapleader=","

autocmd BufWritePre * :%s/\s\+$//e

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
set cc=80

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
"let g:airline_theme="spacegray"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

"Vim-indent"
let g:indentLines_setColors=0

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_elixir_checkers=['elixir']
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_elixir_checker=1

"Gitgutter"
hi clear SignColumn
let g:airline#extenstions#hunks#enable=1

"YouCompleteMe"
let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

"CtrlP"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_mod = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|deps|_build|vendor|node_modules$'

"vim-javascript"
let g:javascript_plugin_flow=1


"theme"
let g:gruvbox_italic=1
let g:grubvox_italicize_comments=1

"set background=dark"
colorscheme spacegray

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

"Identation mapping"
inoremap <TAB> <C-T>
inoremap <S-TAB> <C-D>
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

"Tab navigation"
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>x :tabclose<CR>
inoremap <C-t> :tabnew<CR>i

"RSpec binding"
map <leader>rt :call RunCurrentSpecFile()<CR>
map <leader>ra :call RunAllSpecs()<CR>
