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

set foldmethod=syntax
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
set nobackup
set nowritebackup
set shortmess+=c
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate
"  NOTE: There's always complete item selected by default, you may want to
" enable
"  no select by `"suggest.noselect": true` in your configuration file
"  NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"  other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<Tab>" :
                  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
      inoremap <silent><expr> <c-space> coc#refresh()
else
      inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use `[g` and `]g` to navigate diagnostics
"  Use `:CocDiagnostics` to get all diagnostics of current buffer in location list

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
call plug#end()
color onedark

