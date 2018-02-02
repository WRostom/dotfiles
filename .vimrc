set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'
Plugin 'Tabmerge'
Plugin 'dracula/vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/vim-github-dashboard'
Plugin 'junegunn/vim-emoji'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


set clipboard=unnamedplus
syntax on
filetype on
set path+=**
set wildmenu
set wildignore+=*/node_modules/*
let base16colorspace=256
set termguicolors
colorscheme base16-material

set background=dark
set cursorline
set showmatch
set hlsearch
set nu! "Line Numbering 'on'
let g:airline#extensions#tabline#enabled = 1
set encoding=utf8
set guifont=UbuntuMonoDerivativePowerline\ Nerd\ Font\ 16
set t_Co=256
set completefunc=emoji#complete
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
let g:multi_cursor_next_key='<C-m>'
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-_> :call NERDComment(0, "toggle")<CR>
map <C-t> :tabnew<CR>
map <C-d> :tabn<CR>
map <C-f> :find <Space>
nmap \n :NERDTreeFind<CR>

let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }
