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

" show tabs and spaces as character
" :set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
" :set list

function! Whitespace()
    if !exists('b:ws')
        highlight Conceal ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#585858 gui=NONE
        highlight link Whitespace Conceal
        let b:ws = 1
    endif

    syntax clear Whitespace
    syntax match Whitespace / / containedin=ALL conceal cchar=·
    setlocal conceallevel=2 concealcursor=c
endfunction

augroup Whitespace
    autocmd!
    autocmd BufEnter,WinEnter * call Whitespace()
augroup END

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

" add syntax highlighting for handlebars
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

" this cabbrev uses CTRL-R CTRL-W to get the word under the cursor, limiting the
" search to files of the same type using expand("%:e"), and moving the cursor on
" the command-line to be just before the file list using <C-Left>, so that you
" can easily specify a different search location. This method is nice because you
" can either type :lvim<Enter> to perform the default search, or :lvim<Space> to
" enter the default search into the command line, but leave it there for editing
cabbrev lvim
      \ lvim /\<lt><C-R><C-W>\>/gj
      \ *<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> lw
      \ <C-Left><C-Left><C-Left>
