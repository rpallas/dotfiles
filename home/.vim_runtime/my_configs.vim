let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_new_tab=0

set mouse=a

" set colorscheme (theme)
colorscheme darcula

" shortcut for editing vim config in new tab
nmap <leader>v :tabedit ~/.vim_runtime/my_configs.vim<CR>

" autoreload vim config after editing
if has("autocmd")
  autocmd! bufwritepost .vimrc source $MYVIMRC
  autocmd! bufwritepost my_configs.vim source $MYVIMRC
endif

" folding
set foldmethod=indent
set foldlevel=99
set foldlevelstart=99

" NERDTree position
let g:NERDTreeWinPos = "left"

" indents
set autoindent
set si
set expandtab
set shiftwidth=2
set softtabstop=2

" shortcut for yankring
nnoremap <leader>y :YRShow<CR>

" insert new lines in normal mode
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>

" make help appear in a virtical split on the right side
cnoremap help vert bo help

" customise fonts
set gfn=Source\ Code\ Pro:h13,Menlo:h13

" Create special split hanlding
" from https://www.destroyallsoftware.com/file-navigation-in-vim.html
" set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
" set winheight=5
" set winminheight=5
" set winheight=999

" text wrap setup
set nowrap
nnoremap <D-0> :set nowrap! <CR>

" Don't promt for session autoload on startup (vim-sessions)
let g:session_autoload = 'no'

" show line numbers
set number

" Toggle relative and absolute line numbers
nnoremap <leader>rel :set relativenumber!<CR>

" copy paste via system clipboard
noremap yy "*yy
noremap y "*y
noremap p "*p

noremap <C-±> :NERDTreeToggle<cr>

" Don't prompt to save session when closing vim
:let g:session_autosave = 'no'

