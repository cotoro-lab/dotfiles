" 【その他カスタム設定】
set number
set title
set clipboard&
set clipboard=unnamedplus
set ignorecase	" 大文字小文字を無視して検索
syntax on
set hlsearch
set incsearch
set list
set listchars=tab:>.,eol:↲
set ts=4
set guifont=Menlo\ for\ Powerline
set autoindent
set mouse=a
hi NonText guibg=NONE guifg=DarkGreen
hi SpecialKey ctermfg=darkgray
" カーソル設定
if has('vim_starting')
" 挿入モード時に非点滅の縦棒タイプのカーソル
let &t_SI .= "\e[5 q"
" ノーマルモード時に非点滅のブロックタイプのカーソル
let &t_EI .= "\e[1 q"
" 置換モード時に非点滅の下線タイプのカーソル
let &t_SR .= "\e[3 q"
endif

" 【キーバインド】
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> <C-o>j
inoremap <silent> <C-k> <C-o>k
inoremap <silent> <C-h> <C-o>h
inoremap <silent> <C-l> <C-o>l

noremap <silent> <C-h> <C-w>h
noremap <silent> <C-j> <C-w>j
noremap <silent> <C-k> <C-w>k
noremap <silent> <C-l> <C-w>l

"　【カラースキーム】
" install: https://github.com/tomasr/molokai
" copy: ~/.vim/colors/monokai.vim
" colorscheme molokai
