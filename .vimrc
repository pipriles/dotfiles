syntax on
set mouse=a
set number
set encoding=utf-8
set incsearch
set ignorecase
set smartcase
set showmatch

set ttyfast
set lazyredraw

" 2 space identation
set tabstop=2
set shiftwidth=2

" gvim
set guioptions-=m  " Remove menu bar
set guioptions-=T  " Remove toolbar
set guioptions-=r  " Remove right-hand scroll bar
set guioptions-=L  " Remove left-hand scroll bar

if has('gui_running')
  set guifont=ypn\ envypn\ 11
endif

" Enable True colors
" ==================
" if (has("termguicolors"))
"  set termguicolors
" endif
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Colorscheme hybrid
" ==================
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

set splitbelow
set splitright

call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'w0ng/vim-hybrid'

" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Status bar
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Completion
" ?Plug 'sheerun/vim-polyglot' 
Plug 'OmniCppComplete'
Plug 'shawncplus/phpcomplete.vim'

" Misc
Plug 'chrisbra/colorizer'
Plug 'terryma/vim-multiple-cursors'

" Plug 'spolu/dwm.vim'
" Plug 'roman/golden-ratio' Interesante

call plug#end()

nnoremap <silent> <Esc> :noh<CR><Esc>
nnoremap <F3> :set hlsearch!<CR>

map <F12> :NERDTreeToggle<CR>
" map <C-S-k><C-b> :NERDTreeToggle<CR>

" Window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Search visual selection
vnoremap <expr> // 'y/\V'.escape(@",'\').'<CR>'

if has('nvim')
	" Neovim specific commands
	tnoremap <Esc> <C-\><C-n>
endif


