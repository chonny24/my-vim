filetype plugin on
filetype indent on

set nocompatible
set backspace=2

set autoread

set nowrap

set ignorecase

set wildmenu

set hlsearch

set showmatch

syntax enable

colorscheme vividchalk

set cursorline

highlight Normal ctermbg=black

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal! g`\"" |
	\ endif 

func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

autocmd FileType c,cpp set cindent
set sw=2
set tabstop=2
set expandtab

set showmode

filetype on
set number

highlight PmenuSel ctermfg=black ctermbg=green
highlight Pmenu ctermfg=black ctermbg=gray

set splitright

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <C-s> :SyntasticToggleMode<CR>
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_write = 1
let g:syntastic_check_on_wq = 0

set t_Co=256
set cc=90

hi Search cterm=NONE ctermfg=white ctermbg=blue

execute pathogen#infect()
