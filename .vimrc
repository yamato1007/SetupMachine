set nocompatible        "vi互換を削除

filetype off            "ファイルタイプ自動対応をオフ

set encoding=utf-8      "vimの内部文字コード
set fileencoding=utf-8  "書き込み文字コード
set fileencodings=utf-8,iso-2022jp,euc-jp,cp932     "読み込み文字コード 

set number              "行番号

"set expandtab           "タブを空白文字に
set tabstop=4           "タブ文字の幅
set shiftwidth=4        "自動インデントの幅
set softtabstop=4       "バックスペースで消す空白文字数
set autoindent          "自動インデント
set breakindent         "折り返しもインデントを有効化
set smartindent         "改行前の文字によって改行時にインデント修正

set ruler               "カーソル位置表示（右下）
set cursorline          "カーソル行強調
"set cursorcolumn       "カーソル列強調
"set laststatus=2       "ステータス行を2行表示
"set cmdheight          "画面最下部よりテキストが続く時--継続--表示
set showmatch      " 対応する括弧を強調表示
"set list           " 不可視文字を表示
"set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮    "不可視文字の表示記号設定


set backspace=indent,eol,start  "Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]   "行頭行末の左右移動で行をまたぐ
set scrolloff=8                 "上下8行の視界を確保
set sidescrolloff=16            " 左右スクロール時の視界を確保
set sidescroll=1                " 左右スクロールは一文字づつ行う

syntax on               "色付け
set grepprg=grep\ -nH\ $*
set shellslash          "Windows環境でパスの円マークをバックスラッシュにする

set hlsearch            "検索のハイライトを有効化
set incsearch           "検索入力中に次にマッチするテキストをハイライト


"キーマップ
"noremap : ;
noremap ; :
noremap j gj
noremap k gk
noremap <S-h> ^
"noremap <S-j> }
"noremap <S-k> {
noremap <S-l> $
noremap <S-y> y$
nnoremap <CR> A<CR><ESC>
nnoremap == gg=G''

"画面分割関連
nnoremap s <Nop>
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>
nnoremap sn :new<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sc <C-w>c

"タブ関連
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT

"検索関連
nnoremap / /\v\c
nnoremap ? ?\v\c
vnoremap n "zy:let @/ = @z<CR>n


"カラースキームの設定
"colorscheme jellybeans
"colorscheme railscasts 

filetype plugin indent on
