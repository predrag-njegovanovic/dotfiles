set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

"Plugins"
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Theme plugins"
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'
Plugin 'whatyouhide/vim-gotham'

"Functionalities"
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'kien/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'python-mode/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'elzr/vim-json'
Plugin 'othree/jspc.vim'
Plugin 'hdima/python-syntax'
" Plugin 'ambv/black'
Plugin 'chrisbra/csv.vim'

call vundle#end()
filetype plugin indent on

" Disable arrow keys
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" Leader key
let mapleader=","

let python_highlight_all = 1

autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre *.py execute ':Black'
set backspace=indent,eol,start

" Set yank to clipboard
set clipboard=unnamedplus

set completeopt-=preview

" Spaces and Tabs
syntax enable
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

" UI config
set number
set showcmd
set lazyredraw
set ruler
set cc=90

" Searching
set incsearch
set hlsearch

" Disable backing up
set nobackup
set nowritebackup
set noswapfile

" Identation
set autoindent
set smartindent
set cindent

" Black
let g:black_virtualenv = "~/.virtualenvs/black"

" Airline
let g:airline_theme = "base16"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_buffer=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

" Gruvbox
let g:gruvbox_dark_contrast = 'hard'
let g:gruvbox_improved_strings = 0
let g:gruvbox_improved_warnings = 1

" Vim-indent
let g:indentLines_setColors = 0

" Gitgutter
hi clear SignColumn
let g:airline#extenstions#hunks#enable = 1

" Ale
let g:ale_fix_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_sign_error = '⇒ '
let g:ale_sign_warning = '↯ '
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 1

" Ale fixers
let g:ale_fixers  = {
      \'javascript': ['prettier', 'eslint']
          \}

" Ale Python
let g:ale_python_flake8_use_global = 1
let g:ale_linters = { 'python': ['flake8'] }

" Ale JavaScript
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_linters = { 'javascript': ['eslint'] }

" python-mode
let g:pymode_virtualenv = 1
let g:pymode_init = 0
let g:pymode_python='python3'
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 90
let g:pymode_syntax_space_errors = 0
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_indent = 0
let g:pymode_folding = 0

let g:pymode_run = 1
let g:pymode_run_bind='<leader>p'

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

let g:pymode_rope = 0
let g:pymode_syntax = 1

" SuperTab
let g:SuperTabDefaultCompletionType = "<tab>"

" Close preview window after completion
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_mod = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|deps|_build|vendor|node_modules$'

let g:gruvbox_italic = 1
let g:grubvox_italicize_comments = 1
let g:hybrid_custom_term_colors = 1

set background=dark
set termguicolors
colorscheme gruvbox

" Nerd tree setup
map <F2> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Split windows mapping
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>

" Moving
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Identation mapping
inoremap <TAB> <C-T>
inoremap <S-TAB> <C-D>
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

" Tab navigation
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>x :tabclose<CR>
inoremap <C-t> :tabnew<CR>i
