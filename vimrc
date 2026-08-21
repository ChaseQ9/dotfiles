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
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'yuezk/vim-js'
Plug 'elzr/vim-json'
Plug 'maxmellon/vim-jsx-pretty'
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

colorscheme default
hi! Comment ctermfg=gray

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

filetype plugin on
" Automatic commands ran
filetype plugin indent on 
augroup filetype_html
    autocmd!
    autocmd BufNewFile,BufRead *.html :normal gg=G
augroup END
" Put these in an autocmd group, so that you can revert them with:
" ":augroup vimStartup | au! | augroup END"
"
augroup vimStartup
au!

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid, when inside an event handler
" (happens when dropping a file on gvim) and for a commit message (it's
" likely a different one than last time).
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

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


function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction


" Customizations to plugins
let g:airline_powerline_fonts = 0
let g:airline_theme = "deus"
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_modified = 1
let g:ale_completion_enabled = 0
let g:ale_disable_lsp = 1

