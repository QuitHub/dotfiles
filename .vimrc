

set nocompatible            
filetype off   

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" PLUGINS
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bumaociyuan/vim-swift'
Plugin 'arcticicestudio/nord-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Nice-to-haves
set number
set nolist
set nospell
set hlsearch
syntax on
set tags=./tags,tags;$HOME
set backspace=2

" disable arrows
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
" SEARCH
set ignorecase
set incsearch

" SPLITS
nmap <C-v> :vsplit<CR>
nmap <C-h> :split<CR>

" KEYBINDINGS
nnoremap <C-e> :NERDTreeToggle<CR>  
nnoremap <C-p> :CtrlP<CR>   

" SEARCH NAVIGATION
nmap <C-t> :TagbarToggle<CR>
nmap <C-a> :cn<CR>
nmap <C-n> :cnf<CR>
nmap <C-p> :cpf<CR>
nmap <C-b> :cp<CR>

" SEARCH - KEYBINDINGS
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" SILVER SEARCH
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
syntax enable
colorscheme corporation
set cursorline
set number
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
