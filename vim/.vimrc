syntax on

set background=dark
colorscheme hybrid_material

filetype plugin indent on

set encoding=utf-8
set smartindent
set autoindent
set showmatch
set shiftwidth=4
set softtabstop=4
set expandtab

"Records last 200 commands to history
set history=200

"Show line numbers
set number

"Start NERDTree at startup
autocmd VimEnter * NERDTree

"Start cursor at editor
autocmd VimEnter * wincmd p

"Close NERDTree if there isn't any tabs remained
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

