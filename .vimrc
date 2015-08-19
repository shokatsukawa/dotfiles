" neobundleの使用設定
if has('vim_starting')
   set nocompatible
   set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

" neobundle自身をneobundle.vimで管理する
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""
" ここにインストールしたいプラグインの設定を記述
":help neobundle-examples

" ヘルプ日本語翻訳
NeoBundle 'vim-jp/vimdoc-ja'

" カラースキーム
NeoBundle 'junegunn/seoul256.vim'

" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'

" HTMLのインデント
NeoBundle 'othree/html5.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""" 

call neobundle#end()

" プラグインがインストールされているかチェック
NeoBundleCheck

if !has('vim_starting')
   " .vimrcを読み直した時の設定
   call neobundle#call_hook('on_source')
endif

"PLUG IN ----------------------

" seoul256 ----
set background=dark
let g:seoul256_background = 236
colo seoul256

" NerdTree ----
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

" デフォルトでツリーを表示させる
"autocmd VimEnter * execute 'NERDTree'

" Ctrl+eでNERDTreeを開く
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" othree/html5.vim
let g:html5_event_handler_attributes_complete = 1
let g:html5_rdfa_attributes_complete = 1
let g:html5_microdata_attributes_complete = 1
let g:html5_aria_attributes_complete = 1

"------------------------------

" ヘルプの日本語プラグインの設定
set helplang=ja,en

" 行番号を表示
set number

" シンタックスハイライト
syntax on

" undoファイル無効化
"set noundofile

" バックスペース削除の挙動
set backspace=indent,eol,start

" キーマップ
map Q gq
inoremap <C-U> <C-G>u<C-U>

" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab

set shiftwidth=2

" 自動インデントを有効化する
set smartindent
set autoindent

" ファイルタイプの自動検出、ファイルタイプ用の プラグインとインデント設定
" を自動読み込み
filetype plugin indent on

" フォント設定
set guifont=Monaco:h13

" auto commandの書式設定
autocmd FileType text setlocal textwidth=78
