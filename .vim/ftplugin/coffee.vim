filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))


"CoffeeScript用プラグイン
NeoBundle 'kchmck/vim-coffee-script'

" インデント設定
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
" オートコンパイル
"保存と同時にコンパイルする
autocmd BufWritePost *.coffee silent make!
"エラーがあったら別ウィンドウで表示
autocmd QuickFixCmdPost * nested cwindow | redraw!
" Ctrl-cで右ウィンドウにコンパイル結果を一時表示する
nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h


call neobundle#end()
"未インストールプラグインを起動時にインストール
NeoBundleCheck

filetype plugin indent on
