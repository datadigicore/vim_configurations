call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'djoshea/vim-autoread'
Plug 'dyng/ctrlsf.vim'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'

call plug#end()

syntax on
filetype plugin indent on

highlight ALEError ctermfg=NONE ctermbg=24
highlight ALEErrorSign ctermfg=NONE ctermbg=24
highlight ALEWarning ctermfg=NONE ctermbg=24
highlight ALEWarningSign ctermfg=NONE ctermbg=24
highlight Error ctermfg=NONE ctermbg=24
highlight MatchParen ctermfg=NONE ctermbg=24
highlight Pmenu ctermfg=15 ctermbg=0
highlight PmenuSel ctermfg=NONE ctermbg=24

:set autoread
:set expandtab
:set hlsearch
:set nowrap
:set number
:set noswapfile
:set backspace=indent,eol,start
:set clipboard=unnamed
:set mouse=a
:set numberwidth=3
:set shiftwidth=2
:set tabstop=2
:set wildignore+=*/node_modules/*

let mapleader=","

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_splits=1
let g:airline#extensions#tabline#show_buffers=1
let g:airline#extensions#tabline#formatter='default'
let g:airline_powerline_fonts=1
let g:airline_theme='hybridline'

let g:NERDDefaultAlign='left'
let g:NERDTreeIgnore=['node_modules']
let g:NERDTreeShowHidden=1
let g:NERDSpaceDelims=1

let g:jsx_ext_required=0

let g:fzf_layout={'down':'~25%'}

let g:ctrlsf_default_view_mode = 'compact'

map <C-n> :NERDTreeToggle<CR>

nmap <C-p> :Files<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-S-Tab> :bprevious<CR>
map <C-Tab> :bnext<CR>

map <C-_> <leader>c<space>
map <Space> :noh<CR>

map <C-F>f :CtrlSF
