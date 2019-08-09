set nocompatible              " be iMproved, required
filetype off                  " required

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set mouse=a
set number
set ignorecase
set clipboard=unnamedplus

autocmd FileType cpp setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType h setlocal shiftwidth=2 tabstop=2 softtabstop=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F8> :NERDTreeToggle<CR>

Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.config/YouCompleteMe/.ycm_extra_conf.py'

Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'derekwyatt/vim-fswitch'
let b:fswitchlocs = 'rel:../src,source'
au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.cc let b:fswitchdst = 'hpp,h'
nmap <F10> :FSHere<CR>
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
nmap <F9> :TagbarToggle<CR>
Plugin 'tibabit/vim-templates'
let tmpl_search_paths = ['~/.vim/templates']

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


colorscheme gruvbox
set bg=dark

