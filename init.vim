set encoding=utf-8
colorscheme wombat256
set cmdheight=2
set t_Co=256
set noshowmode
set number
set laststatus=2
set numberwidth=5
set nowrap
set ruler
syntax on
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
call plug#begin('~/.config/nvim/autoload')
" Plugins

Plug 'ervandew/supertab'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'davidhalter/jedi-vim'
Plug 'Raimondi/delimitMate'
Plug 'greyblake/vim-preview'
" Plugin graveyard
Plug 'Shougo/deoplete.nvim'
" End Plugins
call plug#end()
" Key mappings
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

" Split Navigation
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Buffer Navigation
map <S-j> :bprevious<cr>
map <S-l> :bnext<cr>
inoremap <Nul> <C-n>
" General Settings
set timeoutlen=1000 ttimeoutlen=0
set nocompatible
filetype plugin indent on
set backspace=eol,start,indent
set ignorecase
set smartcase
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set autochdir
set nostartofline
set virtualedit=block
set backspace=2
" Plugin Settings

" NERDTree
map <f2> :NERDTreeToggle<cr>

" Ultisnips
" let g:UltisnipsExpandTrigger="<C-j>"
" let g:UltisnipsJumpForward="<C-j>"
" let g:UltisnipsJumpBackwardTrigger="<C-k>"
let g:UltisnipsExpandTrigger="<cr>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
" Airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" YouCompleteMe
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

