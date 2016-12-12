" Settings
set backspace=indent,eol,start
set clipboard=unnamed
set complete=.,t
set completeopt=longest,menu
set expandtab
set history=50
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nobackup
set nocompatible
set noswapfile
set nowrap
set nowritebackup
set number
set numberwidth=5
set relativenumber
set ruler
set shiftwidth=2
set showcmd
set smartcase
set softtabstop=2
set tabstop=2
set wildmode=list:longest,list:full

" Mappings
let mapleader = "\<space>"
map <leader>h :set invhls<cr>
map <leader>r :e config/routes.rb<cr>
map <leader>R :e README.md<cr>
map <leader>t :call RunCurrentSpecFile()<cr>
map <leader>vr :sp $MYVIMRC<cr>
map <leader>so :source $MYVIMRC<cr>

" Auto Commands
if has("autocmd")
  " Automatically rebalance windows on vim resize
  autocmd VimResized * :wincmd =
endif

" Syntax and search highlighting
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elmcast/elm-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'scrooloose/nerdtree'
call plug#end()

" CtrlP Setup
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" elm-format Setup
let g:elm_format_autosave = 1

" Matchit
runtime macros/matchit.vim
