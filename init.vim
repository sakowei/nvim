"    ___  ___ _____           _       ___  _____
"   / _ \|_  / ___/ ___ _  __(_)_ _  / _ \/ ___/
"  / , _/ __/ /__  / _ \ |/ / /  ' \/ , _/ /__
" /_/|_/____|___/ /_//_/___/_/_/_/_/_/|_|\___/

" 沢原浩輔 @RCWei
" Sep.7.2020

" vim-plug 插件
" ~ on win: C:\Users\You\
call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'honza/vim-snippets'
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'hail2u/vim-css3-syntax'
Plug 'mattn/emmet-vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'flazz/vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch':'relase'}
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" 编辑器特性
set fileformats=unix,dos,mac
set ambiwidth=double
set nocompatible
set number
set cursorline
set hidden
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set notimeout
set nowrap
set foldmethod=indent
set foldlevel=100
set foldenable
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set inccommand=split
set visualbell
set colorcolumn=100
set updatetime=100
set ruler
set mouse=a
set nolist
set shortmess+=c
set t_Co=256

" 终端特性
filetype plugin on
syntax on
set cursorline
" colorscheme onedark
set background=dark
set langmenu=zh_CN.UTF-8
set encoding=utf-8
set fileencoding=utf-8
language message zh_CN.UTF-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set lazyredraw
set showmatch
set incsearch
set hlsearch

" 键映射
noremap Q :q<CR>
noremap <C-Q> :qa<CR>
noremap <C-S> :w<CR>
vnoremap <BS> d
vnoremap <C-X> +x
vnoremap <C-C> +y
map <C-V> +gP
noremap <C-Z> u

filetype plugin indent on

"" <LEADER> 键
let mapleader=','

let no_buffers_menu=1
set mousemodel=popup

"" 状态栏
set laststatus=2

"" 状态栏配色
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
  \ }
\ }

command! FixWhitespace :%s/\s\+$//e

augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

" JavaScript
let g:javascript_enable_domhtmlcss = 1

"NERDTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-B> :NERDTreeToggle<CR>
let NERDTreeWinPos='left'
let NERDTreeWinSize=24

"切换窗口
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"coc.nvim
let g:coc_global_extensions = [
  \'coc-json', 'coc-vimlsp','coc-clangd',
  \'coc-emmet','coc-html','coc-java','coc-phpls',
  \'coc-spell-checker','coc-sql','coc-css','coc-tsserver']

" TAB 选择补全建议
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-e> coc#refresh()

" 回车确认补全
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

if has("patch-8.1.1564")
 into one
  set signcolumn=number
else
  set signcolumn=yes
endif
