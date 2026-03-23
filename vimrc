"""""""""""""""""""""""""""""
"
" VIM RC FILE CHASE QUIGLEY "
"
"""""""""""""""""""""""""""""

"--------------------------------------------------------------------------------
"Plugin Stuff
"--------------------------------------------------------------------------------
" Sourced from google, to check whether Plug is installed
if empty(globpath(&rtp, 'autoload/plug.vim'))
    " vim-plug is not installed, so install it
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    source ~/.vimrc " Reload the config after installation
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set number relativenumber
syntax on
set autoindent
set scrolloff=1
set sidescroll=1
set sidescrolloff=2
set formatoptions+=j
set ttimeout
set ttimeoutlen=100
set shiftwidth=4
set backspace=indent,eol,start
set ignorecase
set smartcase
set formatoptions-=t
set ruler
set tabstop=4
set showcmd
set title
set wildmode=longest,list,full
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set showmatch
set hlsearch
set spell
set textwidth=80
set background=light

let mapleader="-"
let maplocalleader="."

inoremap <S-Tab> <C-d>
nnoremap . gt
nnoremap , gT
nnoremap <CR> :noh<CR><CR>
inoremap {<CR> {<CR>}<Esc>ko
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

" Automatic commands ran
filetype plugin indent on 
augroup filetype_html
    autocmd!
    autocmd BufNewFile,BufRead *.html :normal gg=G
augroup END

set spelllang=en
highlight clear SpellBad
highlight SpellBad term=standout cterm=underline ctermfg=red
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
highlight Pmenu ctermbg=black ctermfg=white

" Disable Coc diagnostic highlighting 
hi CocErrorHighlight cterm=NONE gui=NONE
hi CocWarningHighlight cterm=NONE gui=NONE
hi CocInfoHighlight cterm=NONE gui=NONE
hi CocHintHighlight cterm=NONE gui=NONE

hi CocErrorLine cterm=NONE gui=NONE
hi CocWarningLine cterm=NONE gui=NONE
hi CocInfoLine cterm=NONE gui=NONE
hi CocHintLine cterm=NONE gui=NONE

highlight CocMenuSel ctermbg=238 guibg=#444444
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Customizations to plugins
let g:airline_powerline_fonts = 0
let g:airline_theme = "deus"
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_modified = 1
let g:ale_completion_enabled = 1
let g:ale_disable_lsp = 1
let g:ale_linters = {
\ 'bash': [],
\ 'sh': [],
\ 'c': [],
\ 'python': [],
\}

" Test comment color
hi Comment ctermfg=gray


