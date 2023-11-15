" 【deinの設定】
" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/home/admini/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/home/admini/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('tpope/vim-fugitive')
call dein#add('Mizuchi/vim-ranger')
call dein#add('Shougo/vimshell')
call dein#add('Shougo/vimfiler')
call dein#add('Shougo/unite.vim')
call dein#add('cohama/lexima.vim')

" Finish Dein initialization (required)
call dein#end()

" Force Cache Clear
" call dein#recache_runtimepath()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif


" 【その他カスタム設定】
"---------------------------------------------------------------------------------
set number
set title
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set clipboard&
set clipboard=unnamed,unnamedplus
set ignorecase	" 大文字小文字を無視して検索
set hlsearch
set incsearch
set list
set listchars=tab:>.,eol:↲
set ts=4
set guifont=Menlo\ for\ Powerline
set autoindent
set mouse=a
set nowrap
set modifiable
set write
hi NonText guibg=NONE guifg=DarkGreen
hi SpecialKey ctermfg=darkgray
syntax on

" 【カーソル設定】
"---------------------------------------------------------------------------------
if has('vim_starting')
" 挿入モード時に非点滅の縦棒タイプのカーソル
let &t_SI .= "\e[5 q"
" ノーマルモード時に非点滅のブロックタイプのカーソル
let &t_EI .= "\e[1 q"
" 置換モード時に非点滅の下線タイプのカーソル
" let &t_SR .= "\e[3 q"
endif



" 【ステータスバー（vim-airline）設定】
"---------------------------------------------------------------------------------
" 下記をインストール
" git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
" git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'papercolor'
"let g:airline_theme = 'tender'
let g:airline#extensions#branch#enabled = 1

let g:airline#extensions#tabline#buffer_idx_format = {
	\ '0': '0 ',
	\ '1': '1 ',
	\ '2': '2 ',
	\ '3': '3 ',
	\ '4': '4 ',
	\ '5': '5 ',
	\ '6': '6 ',
	\ '7': '7 ',
	\ '8': '8 ',
	\ '9': '9 '
	\}


"【vim-rangerの設定】
"---------------------------------------------------------------------------------
" https://github.com/Mizuchi/vim-ranger#configuration
let g:ranger_executable = 'ranger'
let g:ranger_on_exit = 'bwipe'
let g:ranger_open_mode = 'tabe'


" 【キーバインド】
"---------------------------------------------------------------------------------
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> <C-o>j
inoremap <silent> <C-k> <C-o>k
inoremap <silent> <C-h> <C-o>h
inoremap <silent> <C-l> <C-o>l

noremap <silent> <C-h> <C-w>h
noremap <silent> <C-j> <C-w>j
noremap <silent> <C-k> <C-w>k
noremap <silent> <C-l> <C-w>l
noremap <silent> <S-v> <C-v>

" vim airline
nmap <silent> <C-S-i> <Plug>AirlineSelectPrevTab
nmap <silent> <C-S-o> <Plug>AirlineSelectNextTab
nmap <silent> <C-m> :bwipe<CR>
nmap <silent> <C-n> :e 
nnoremap <f3> :tabe %:p:h<CR>

" vimfiler
noremap <silent> <C-b> :VimFiler -split -simple -winwidth=35 -no-quit<CR>

"　【カラースキーム】
"---------------------------------------------------------------------------------
" install: https://github.com/tomasr/molokai
" copy: ~/.vim/colors/monokai.vim
" colorscheme molokai
"set background=dark
" colorscheme material-theme
 colorscheme tender
"if (has("termguicolors"))
" set termguicolors
"endif

" 背景色を透過する設定
" これより上にカラースキームの設定を記載すること
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none
highlight Visual cterm=none ctermbg=241 ctermfg=254
highlight Search cterm=none ctermbg=186 ctermfg=234
highlight Comment cterm=none ctermbg=none ctermfg=243
