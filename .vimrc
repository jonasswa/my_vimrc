set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'sjl/badwolf'
Plugin 'machakann/vim-highlightedyank'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ajh17/VimCompletesMe' " Lightweight
"Plugin 'Valloric/YouCompleteMe' "https://github.com/ycm-core/YouCompleteMe
Plugin 'airblade/vim-gitgutter' "https://github.com/airblade/vim-gitgutter
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Adds numbers on the side, always
set nu

" Set color
if &term =~ '256color'
	    set t_ut=
    endif

colorscheme badwolf

" Enable folding
set foldmethod=indent
set foldlevel=99

" Automatic closing brackets (disabled, as auto-pairs is installed)
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>

" Making a shortcut for jumping multiple lines at once
noremap <C-Up> 5k
noremap <C-Down> 5j

" Map key for search using fzf
map <C-f> :Files<CR>

" Enable folding with the spacebar
noremap <space> za

" Fixing page up and page down issues
map <silent> <PageUp> 1000<C-U>
map <silent> <PageDown> 1000<C-D>
imap <silent> <PageUp> <C-O>1000<C-U>
imap <silent> <PageDown> <C-O>1000<C-D>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger= "<c-j>"
let g:UltiSnipsJumpForwardTrigger= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger= "<c-k>"
let g:UltiSnipsUsePythonVersion = 3

" Modifying indent guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1 

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" Set system clipboard
set clipboard=unnamedplus

" Set up how to handle .py files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8

"How to handle .js, .html and .css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 expandtab

" Let nerdtree hide some files, autoclose if nertree is the only one open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_completion = 1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

