set mouse=a

if has("autocmd")
  autocmd! bufwritepost .vimrc source $MYVIMRC
  autocmd! bufwritepost my_configs.vim source $MYVIMRC
endif

" autoreload vim config after editing
nmap <leader>v :tabedit ~/.vim_runtime/my_configs.vim<CR>

" folding
set foldlevel=50
set foldlevelstart=50

" NERDTree position
let g:NERDTreeWinPos = "left"

" indents
set shiftwidth=2
set tabstop=2

" shortcut for yankring
nnoremap <leader>y :YRShow<CR>

" show line numbers
set number

colorscheme darcula
