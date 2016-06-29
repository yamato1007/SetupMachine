set nocompatible        "vi互換を削除

filetype off            "ファイルタイプ自動対応をオフ

set encoding=utf-8      "vimの内部文字コード
set fileencoding=utf-8  "書き込み文字コード
set fileencodings=utf-8,iso-2022jp,euc-jp,cp932     "読み込み文字コード 

set number              "行番号

set expandtab           "タブを空白文字に
set tabstop=4           "タブ文字の幅
set shiftwidth=4        "自動インデントの幅
set softtabstop=4       "バックスペースで消す空白文字数
set autoindent          "自動インデント
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


"キーマップ
noremap j gj
noremap k gk
noremap <S-h>   ^
"noremap <S-j>   }
"noremap <S-k>   {
noremap <S-l>   $
noremap : ;
noremap ; :
nnoremap <CR> A<CR><ESC>
nnoremap == gg=G''

"画面分割関連
nnoremap s <Nop>
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>
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



" filetype関連
" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee


"NeoBundle
if has('vim_starting')
    set nocompatible
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install neobundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'
NeoBundleFetch 'Shougo/neobundle.vim'


"統合インタフェース
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
nnoremap <silent> <Space>ub :<C-u>Unite buffer<CR>
nnoremap <silent> <Space>um :<C-u>Unite buffer file_mru<CR>
nnoremap <silent> <Space>uu :<C-u>Unite file<CR>
nnoremap <silent> <Space>ut :<C-u>Unite tab<CR>


"非同期処理
NeoBundle 'Shougo/vimproc', {
            \ 'build' : {
            \   'windows' : 'make -f make_mingw32.mak',
            \   'cygwin' : 'make -f make_cygwin.mak',
            \   'mac' : 'make -f make_mac.mak',
            \   'unix' : 'make -f make_unix.mak',
            \   },
            \ }

"vim-shell
NeoBundleLazy 'Shougo/vimshell', {
            \ 'depends' : 'Shougo/vimproc',
            \ 'autoload' : {
            \   'commands' : [{ 'name' : 'VimShell', 'complete' : 'customlist,vimshell#complete'},
            \                 'VimShellExecute', 'VimShellInteractive',
            \                 'VimShellTerminal', 'VimShellPop'],
            \   'mappings' : ['<Plug>(vimshell_switch)']
            \ }}
nnoremap <silent> <Space>ss :<C-u>VimShell<CR>
nnoremap <silent> <Space>sp :<C-u>VimShellPop<CR>


"補完
NeoBundle 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
"補完を探索するキーをタブキーに設定
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


"カラースキーム
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'

NeoBundle 'ujihisa/unite-colorscheme'


"閉じ括弧自動化
NeoBundle 'Townk/vim-autoclose'


"プログラムの実行
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config = {
            \   "cpp" : {
            \       "cmdopt" : "-std=c++14"
            \   },
            \   "_" : {
            \       "runner" : "vimproc",
            \       "runner/vimproc/updatetime" : 60,
            \       "outputter/buffer/split" : ":botright",
            \       "outputter/buffer/close_on_empty" : 1
            \   },
            \}
"保存してクイックラン実行
nnoremap <silent> \r :write<CR>:QuickRun<CR> 
"クイックラン停止
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"

"quickrun-hook 集
NeoBundle "osyo-manga/shabadou.vim"

"シンタックスチェック
NeoBundle "osyo-manga/vim-watchdogs"
"quickrunの設定を引用
"call watchdogs#setup(g:quickrun_config)
" 書き込み後にシンタックスチェックを行う
let g:watchdogs_check_BufWritePost_enable = 1
" こっちは一定時間キー入力がなかった場合にシンタックスチェックを行う
let g:watchdogs_check_CursorHold_enable = 1
nnoremap \sc :WatchdogsRun

"エラー箇所のハイライト
NeoBundle "jceb/vim-hier"



"HTML plugin
"NeoBundle 'mattn/emmet-vim'



"Vim-LaTeX
NeoBundle 'vim-latex/vim-latex', {
            \    "autoload" : {"filetypes" : ["tex"]}
            \}
let tex_flavor = 'latex'
let g:Tex_DefaultTargetFormat = 'pdf' 
let g:Tex_CompileRule_dvi = 'platex --interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let g:Tex_ViewRule_pdf = '/usr/bin/open -a TeXShop.app'


"NeoBundle設定の終了
call neobundle#end()
"未インストールプラグインを起動時にインストール
NeoBundleCheck


"分割ファイルの読み込み
"set rtp+=$HOME/dotfiles/.vim/
"runtime! after/ftplugin/*.vim


"カラースキームの設定
colorscheme jellybeans
"colorscheme railscasts 

filetype plugin indent on
