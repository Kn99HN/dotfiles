set number
syntax on
set list
set showbreak=↳
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set foldlevelstart=4

" Set column at 80 char with gray
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Remapping moving between windows
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <c-l> <c-w>l

nnoremap <silent> <c-left> <c-w>h
nnoremap <silent> <c-up> <c-w>j
nnoremap <silent> <c-down> <c-w>k
nnoremap <silent> <c-right> <c-w>l

noremap <c-n> Go
