"enable pathogen
execute pathogen#infect()

set background=dark
colorscheme hybrid_material

syntax on
filetype plugin indent on

set encoding=utf-8
set smartindent
set smartcase
set autoindent
set showmatch
set shiftwidth=4
set softtabstop=4
set expandtab
"Highlight searh results
set hlsearch
"enable incremental search, show search preview while typing
set incsearch

"Records last 200 commands to history
set history=200

"Show line numbers
set number

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

"Start NERDTree at startup
autocmd VimEnter * NERDTree

"Start cursor at editor
autocmd VimEnter * wincmd p

"Close NERDTree if there isn't any tabs remained
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" ctrl+c to toggle highlight after search.
let hlstate=0
nnoremap <c-l> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>

" Search for the current selection (visual mode)
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch(cmdtype)
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
    let @s = temp
endfunction
