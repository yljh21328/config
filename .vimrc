" origin from pct/vimrc-core
" https://github.com/pct/vimrc-core

" 設定 vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
" Bundle 'skammer/vim-css-color'
" Bundle 'vim-scripts/AnsiEsc.vim'

" undo tree plugin
" Bundle 'sjl/gundo.vim'
" Bundle 'kien/ctrlp.vim'
" Bundle 'scrooloose/syntastic'

" NERDTree 相關設定

" 自動開啟 nerdtree
" autocmd vimenter * NERDTree
nnoremap <silent> <F5> : NERDTree<CR>

" Gundo 相關設定
"nnoremap <F6> : GundoToggle<CR>

" 設定 GUI 字型
set guifont=Monaco:h12
set guioptions-=T

" 使用面板
" colorscheme Tomorrow-Night-Bright
colorscheme gummybears
" 256 色
set t_Co=256

" 檔案格式優先
set ffs=unix,dos ff=unix

" set mouse
set mouse=a
" set mouse=v
set ttymouse=xterm

" 打開語法效果
syntax on

" 顯示行號
set number

" 顯示現在的模式
set showmode

" tab 相關設定
" 輸入時將tab展開為空白
" 將存在的tab顯示為8格
" 按下tab鍵時縮排4格
" 自動縮排(e.g. << and >>)時以4格為單位
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set smarttab

" folding
set fdm=indent
set fdc=0

" show the cursor position all the time
set ruler

" 縮排
set autoindent
set smartindent

" 沒有備份檔案
set nobackup

" 設定自動換行
set wrap

" 尋找時，符合字串會反白表示
set hlsearch

" 加強式尋找功能，在鍵入 pattern 時會立即反應移動至目前鍵入之 pattern 上
set incsearch

" 設定檔案編碼清單
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le

" 設定編碼 內部編碼 Terminal編碼
set fenc=utf-8 enc=utf-8 tenc=utf-8

" 總是顯示資訊
" for vim-powerline working
set laststatus=2

" syntax fold
set foldmethod=syntax

" 方便中文重排設定
set formatoptions=mtcql

" allow using < & > to indent in visual mode
:vnoremap < <gv
:vnoremap > >gv

" c autotidy by indent
autocmd FileType c :set equalprg=indent

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" 顯示未完成的指令
set showcmd

" show spaces and tabs
set list
set listchars=tab:>-,trail:-

" press enter to tabedit file in ctrlp
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
\ }

" make phpcs do not show warnings
let g:syntastic_phpcs_conf = "-n"
" disable syntastic
let g:loaded_syntastic_plugin = 1