set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" PLUGINS
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bumaociyuan/vim-swift'
Plugin 'pangloss/vim-javascript'
Plugin 'natebosch/vim-lsc'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'dracula/vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'sjl/gundo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

" Configuration for vim-lsc
let g:lsc_enable_autocomplete = v:false
let g:lsc_server_commands = {
  \  'scala': {
  \    'command': 'metals-vim',
  \    'log_level': 'Log'
  \  }
  \}
let g:lsc_auto_map = {
  \  'GoToDefinition': 'gd',
  \}

" Nice-to-haves
set cursorline "highlight the line the cursor is on
set number "line numbers
set nolist
set nospell
set hlsearch
syntax on
set tags=./tags,tags;$HOME
set backspace=2
set clipboard=unnamedplus

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
      set mouse=a
endif

syntax enable

" map space to leader

map <space> \

" eslint
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_always_populate_loc_list = 1

" disable arrows
no <down> <C-W>j
no <left> <C-W>h
no <right> <C-W>l
no <up> <C-W>k

ino <down> <C-W>j
ino <left> <C-W>h
ino <right> <C-W>l
ino <up> <C-W>k

no <leader>j <C-W>j
no <leader>h <C-W>h
no <leader>l <C-W>l
no <leader>k <C-W>k

" SEARCH
set ignorecase
set incsearch

" REPLACE 
" replace word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" KEYBINDINGS
nnoremap <leader>a :NERDTreeToggle<CR>
nnoremap <leader>p :CtrlP<CR>
nmap <leader>t :TagbarToggle<CR>
nmap <leader>f <Plug>CtrlSFPrompt
nnoremap <leader>u :GundoToggle<CR>

" SEARCH - KEYBINDINGS
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"delete whitespace
nmap <leader>ws :%s/\s\+$//e<CR>


" USE ZSH
set shell=zsh

" SILVER SEARCH
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " use ag for vimgrepping
  let g:ackprg = 'ag --vimgrep'
  
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
