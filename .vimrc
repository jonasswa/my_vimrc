set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold' " Folds python code properly
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'machakann/vim-highlightedyank'
Plugin 'jiangmiao/auto-pairs' " Closes stuff
Plugin 'alvan/vim-closetag' " Closes HTML
Plugin 'tpope/vim-commentary' " Comment multiple lines
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'davidhalter/jedi-vim' " Only use for arguments (call signatures)
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/deoplete.nvim'
Plugin 'junegunn/seoul256.vim'
" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Adds numbers on the side, always
set nu
set foldmethod=indent
set foldlevel=99

let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_highlight_close_tag = 1

" Making a shortcut for jumping multiple lines at once
noremap <C-Up> 5k
noremap <C-Down> 5j

" Map key for search using fzf
map <C-f> :Files<CR>

" Enable folding with the spacebar
noremap <space> za

" Load deoplete as default
let g:deoplete#enable_at_startup = 1

" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

" Fixing page up and page down issues
map <silent> <PageUp> 1000<C-U>
map <silent> <PageDown> 1000<C-D>
imap <silent> <PageUp> <C-O>1000<C-U>
imap <silent> <PageDown> <C-O>1000<C-D>

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1 

" Get rid of trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Options for vim-closetag
" What file extensions to use
let g:closetag_filenames = '*.js, *.html,*.xhtml,*.phtml'

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
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2|
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8

" Let nerdtree hide some files, autoclose if nertree is the only one open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set theme and fix background color
let g:seoul256_background = 234
if &term =~ '256color'
	    set t_ut=
    endif
colo seoul256

