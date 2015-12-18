set encoding=utf-8      "vimの内部文字コード
set fileencoding=utf-8  "書き込み文字コード
set fileencodings=utf-8,iso-2022jp,euc-jp,cp932     "読み込み文字コード 

set number 				"行番号

set expandtab			"タブを空白文字に
set tabstop=4			"タブ文字の幅
set shiftwidth=4		"自動インデントの幅
set softtabstop=4       "バックスペースで消す空白文字数
set autoindent			"自動インデント
set smartindent			"改行前の文字によって改行時にインデント修正

set ruler				"カーソル位置表示（右下）
set cursorline			"カーソル行強調
"set cursorcolumn		"カーソル列強調
"set laststatus=2		"ステータス行を2行表示
"set cmdheight			"画面最下部よりテキストが続く時--継続--表示

syntax on				"色付け
set grepprg=grep\ -nH\ $*
set shellslash


if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'

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

call neobundle#end()
NeoBundleCheck


filetype plugin indent on
