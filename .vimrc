"                           "
"                           "
"                           "
"                           "
"                           "
"                           "
"                           "
"                           "
"                           "
"                           "
"                           "
" VIM RC FILE CHASE QUIGLEY "
"                           "
"                           "
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

" for when I forget to run vim with sudo privs
cmap w!! w !sudo tee > /dev/null %

inoremap {<CR> {<CR>}<Esc>ko<tab>
" inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
" inoremap " ""<Esc>ha
" inoremap ' ''<Esc>ha
inoremap <S-Tab> <C-d>

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"Status Stuff
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2


"Plugin Stuff
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
