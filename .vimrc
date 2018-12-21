call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'chase/vim-ansible-yaml'
Plug 'dart-lang/dart-vim-plugin'
Plug 'djoshea/vim-autoread'
Plug 'dyng/ctrlsf.vim'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'pangloss/vim-javascript'
Plug 'roxma/ncm-rct-complete'
Plug 'roxma/nvim-yarp'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

call plug#end()

syntax on
filetype plugin indent on

autocmd BufWritePre * %s/\s\+$//e
autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=NONE
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')

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
:set completeopt=noinsert,menuone,noselect
:set mouse=a
:set numberwidth=3
:set shiftwidth=2
:set tabstop=2
:set tags=./tags
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

let g:ctrlsf_default_view_mode='compact'

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0

let g:go_highlight_build_constraints=1
let g:go_highlight_extra_types=1
let g:go_highlight_fields=1
let g:go_highlight_function_calls=1
let g:go_highlight_functions=1
let g:go_highlight_operators=1
let g:go_highlight_types=1

map <C-n> :NERDTreeToggle<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-S-Tab> :bprevious<CR>
map <C-Tab> :bnext<CR>

map <C-_> <leader>c<space>
map <Space> :noh<CR>

map <C-F> :CtrlSF<space>

nmap <C-p> :Files<CR>

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterRevertHunk
nmap <Leader>hp <Plug>GitGutterPreviewHunk

xnoremap <silent> p p:let @+=@0<CR>:let @"=@0<CR>
