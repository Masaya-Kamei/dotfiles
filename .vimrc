" plugin manager Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'preservim/nerdtree'

call vundle#end()
filetype plugin indent on

"文字コードをUFT-8に設定
set fenc=utf-8
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" 入力中のコマンドをステータスに表示する
set showcmd

" 見た目系
" 行番号を表示
set number
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax on

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
" set list listchars=tab:\>\-
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch

" カラースキーム
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
" ダーク系のカラースキームを使う
" set background=dark

" 永続的Undoを有効にする
if has("persistent_undo")
    set undodir=~/.undodir
    set undofile
endif

" キーマッピング
" 括弧を自動補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><BS><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><BS><ESC><S-o>
" Ctrl+e で NERDTree を開く
nnoremap <silent><C-e> :NERDTreeToggle<CR>
