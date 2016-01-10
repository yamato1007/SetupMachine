filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))


"Haskell plugin
"Haskellでインデントを正しく行う
NeoBundle 'kana/vim-filetype-haskell'

"型情報の表示
"ghc-modをVim上で表示する
NeoBundle 'eagletmt/ghcmod-vim'
noremap \t :GhcModType<CR>

"補完
"これもghc-modの機能を用いている
NeoBundle 'ujihisa/neco-ghc'

"ハイライト
NeoBundle 'dag/vim2hs'
let g:haskell_conceal = 0

"Uniteを用いてパッケージをインポート
NeoBundle 'ujihisa/unite-haskellimport'



call neobundle#end()
"未インストールプラグインを起動時にインストール
NeoBundleCheck

filetype plugin indent on
