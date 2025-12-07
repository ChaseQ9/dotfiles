"""""""""""""""""""""""""""""
" VIM RC FILE CHASE QUIGLEY "
"""""""""""""""""""""""""""""
set number relativenumber
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set wildmode=longest,list,full
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
filetype on
set showmode
set showmatch
set hlsearch
set spell
set textwidth=80

let mapleader="-"
let maplocalleader="."
" ...
cmap w!! w !sudo tee > /dev/null %

inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap <S-Tab> <C-d>
inoremap jk <esc>
nnoremap . gt
nnoremap , gT
" The following remap is used to open up VIMRC file 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" The following remap is used to source the VIMRC file
nnoremap <leader>sv :source $MYVIMRC<cr>
" The following remaps are used to place quotes around a word (' or ")
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" Quality of life remaps
nnoremap H 0
nnoremap L $
"


" Abbreviations within 'i' mode of vim
iab sh #!/usr/bin/env bash

" Automatic commands ran
augroup filetype_html
    autocmd!
    autocmd BufNewFile,BufRead *.html :normal gg=G
augroup END

" autocmd Filetype python 

set spelllang=en
highlight clear SpellBad
highlight SpellBad term=standout cterm=underline ctermfg=red
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

"-------------------------------------------------------------------------------- 
"Status Stuff
"-------------------------------------------------------------------------------- 
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2


"-------------------------------------------------------------------------------- 
"Plugin Stuff
"-------------------------------------------------------------------------------- 
call plug#begin()

"Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'embark-theme/vim', {'as': 'embark', 'branch' : 'main' }
let g:coc_global_extensions = ['coc-clangd']
let g:embark_terminal_italics = 1

call plug#end()
"autocmd BufEnter * silent! call CocActionAsync('doHover')

set termguicolors
set background=dark
colorscheme embark
hi StatusLine guifg=#f5428d 
hi StatusLineNC guifg=DarkGrey
