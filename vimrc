set nocompatible
if has("termguicolors")
        set t_8f=[38;2;%lu;%lu;%lum
        set t_8b=[48;2;%lu;%lu;%lum
        set termguicolors
endif
syntax enable
syntax on
set undofile
set undodir=~/.vim/undodir

set encoding=utf-8
set fileencodings=utf-8,gbk,gb2310
set hidden

set number
set relativenumber
set showcmd
set cmdheight=2
set updatetime=100
set laststatus=2
set ruler

set foldmethod=indent
set cursorline

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set shiftround

set list
set listchars=tab:>=,trail:·
set mouse=a

inoremap <silent><expr> <TAB>
\ coc#pum#visible() ? coc#_select_confirm() :
\ coc#expandableOrJumpable() ?
\ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set nobackup
set nowritebackup
set shortmess+=c
set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
call plug#end()
color onedark

let g:coc_disable_startup_warning = 1
