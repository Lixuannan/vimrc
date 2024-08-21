"base
syntax on
set nu
set ruler
set nocompatible
set autowrite
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cursorline
set cursorcolumn
set mouse=a
set completeopt-=preview
autocmd VimEnter * NERDTreeToggle
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

"vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'Valloric/YouCompleteMe'
  Plug 'scrooloose/nerdcommenter'
  Plug 'vim-airline/vim-airline'
  Plug 'luochen1990/rainbow'
  Plug 'Raimondi/delimitMate'
  Plug 'lixuannan/VOIM'
  Plug 'joshdick/onedark.vim'
call plug#end()

colorscheme onedark

map <F5> :RunCode %<CR>
imap <F5> <esc> :RunCode %<CR>
vmap <F5> <esc> :RunCode %<CR>

map <F6> :JudgeCode %<CR>
imap <F6> <esc> :JudgeCode %<CR>
vmap <F6> <esc> :JudgeCode %<CR>

map <F7> :DebugCode %<CR>
imap <F7> <esc> :DebugCode %<CR>
vmap <F7> <esc> :DebugCode %<CR>

noremap <C-a> ggVG
vnoremap <C-y> "+y
nnoremap <C-p> "*p

"NerdTree
map <C-s> :NERDTreeToggle<CR>


"auto-pairs
au Filetype FILETYPE let b:AutoPairs = {"(": ")"}au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})


"ycm
"let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files=1
"let g:ycm_min_num_of_chars_for_completion=2
"let g:ycm_seed_identifiers_with_syntax=1

"ranbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\		'nerdtree': 0,  
	\	}
	\}



