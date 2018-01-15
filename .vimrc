" VUNDLE CONFIG
" ----------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'kien/rainbow_parentheses.vim'

Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
"Bundle 'Valloric/YouCompleteMe'

Plugin 'derekwyatt/vim-scala'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" NERDTree Settings
" autocmd vimenter * NERDTree " start nerdtree on vim enter
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close if only window

" Syntastic Settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_warning_symbol = '»'
let g:syntastic_style_warning_symbol = '»'

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline#extensions#branch#enabled = 1 " Enable branches
let g:airline_theme='base16'

" Gitgutter
let g:gitgutter_override_sign_column_highlight = 0
set updatetime=250

" Misc Settings
syntax on
set laststatus=2    " always show status line
set ruler           " show cursor all the time 
set tabstop=4
set shiftwidth=4
set expandtab

set number          " show line numbers
set incsearch       " incremental searching
set ignorecase      " ignore case while searching

" Python settings
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1
syntax on

" Full Stack settings
 au BufNewFile,BufRead *.js, *.html, *.css
     \ set tabstop=2
     \ set softtabstop=2
     \ set shiftwidth=2

" Leader and Plugin Mappings
let mapleader=" "
noremap <leader>n :NERDTreeToggle<CR>
map <leader>v :SyntasticCheck<CR>

" Go to window with arrow keys
noremap <leader><Left> <C-w>h
noremap <leader><Right> <C-w>l
noremap <leader><Up> <C-w>k
noremap <leader><Down> <C-w>j

" Buffer Mappings
nmap <leader>t :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

" Colors
let base16colorspace=256
colorscheme base16-default-dark

" Custom colors
hi LineNr                    ctermfg=white   ctermbg=black
" hi vertsplit                 ctermfg=darkgray   ctermbg=darkgray
hi SyntasticStyleWarningSign ctermfg=yellow  ctermbg=black
hi SyntasticStyleErrorSign   ctermfg=red     ctermbg=black
hi SyntasticWarningSign      ctermfg=yellow  ctermbg=black
hi SyntasticErrorSign        ctermfg=red     ctermbg=black
