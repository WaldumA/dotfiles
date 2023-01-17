set nocompatible              " required
filetype off                  " required

" To open collapsed folder type "zR" or use spacebar
" To close a group type "zM", place cursor over { markers
"

" PLUGINS -----------------------------------------------------------------
" {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'preservim/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'lervag/vimtex'
Plugin 'xuhdev/vim-latex-live-preview'
"Plugin 'nvie/vim-flake8'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'Valloric/YouCompleteMe'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf-8
" }}}

" GLOBAL SETTINGS ---------------------------------------------------------
" {{{ 
" Syntax
syntax on
" Colorscheme
colorscheme nord
" Linenumbers
set nu
" Highlight horizontal line
set cursorline
" Do not backup saves
set nobackup
" Highlight characters when searching
set incsearch
" Ignore capital letters doing search
set ignorecase
" Do not ignore capital letters when using capital letters in the search
set smartcase
" Show matching words doing search
set showmatch
" Highlighting when doing searches
set hlsearch
" Set history, default is only 20
set history=1000
" Set tabstop to 4
set tabstop=4
" Enables wheel scroll with mouse
set mouse=a
set clipboard=unnamedplus

" Copying between VIM clipboard and global clipboard
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>
"}}}

" PYTHON SETTINGS ---------------------------------------------------------
" {{{
au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
" }}}

" C++ SETTINGS ------------------------------------------------------------
" {{{

"au BufNewFile,BufRead *.cpp, *.hpp, *.c, *.h
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" }}}

" XML Settings ------------------------------------------------------------
" {{{
" tex settings
au BufNewFile,BufRead *.xml, *.sdf
    \ set tabstop=4 |
    \ set shiftwidth=4 |
    \ set autoindent |
    \ set fileformat=unix |
" }}}

" TXT Settings ------------------------------------------------------------
" {{{
" txt settings
au BufNewFile,BufRead *.txt, *.tex
    \ set spell |
    \ set nonumber |
    \ set tabstop=4 |
    \ set shiftwidth=4 |
    \ set autoindent |
    \ set fileformat=unix |
" }}}

" KEYBINDINGS -------------------------------------------------------------
" {{{
" Map jj to esc
inoremap jj <esc>
" Run a python script by pressing F5
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>
" Mapping for easier navigation 
nnoremap <c-j> <c-w-j>
nnoremap <c-k> <c-w-k>
nnoremap <c-h> <c-w-h>
nnoremap <c-l> <c-w-l>
" }}}

" PLUGIN SPESIFICS --------------------------------------------------------
" {{{

" UltiSnips ---------------------------------------------------------------
" {{{
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger  = '<C-j>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'  " use Shift-Tab to move backward through tabstops
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
" }}}

" YCM ---------------------------------------------------------------------
" {{{
"Stop asking me questions
let g:ycm_confirm_extra_conf = 0
" }}}

" NERDTREE ----------------------------------------------------------------
" {{{
" Toogle NERDTREE by pressing F3
nnoremap <F3> :NERDTreeToggle<cr>
" Ignore certain files with NERDTREE
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" }}}


" STATUS BAR --------------------------------------------------------------
" {{{
set statusline=
set statusline+=\ %F\ %Y\ Percent:\ %p%%
set laststatus=2
" }}}


" Attempt to make Latex work with you complete me
"if !exists('g:ycm_semantic_triggers')
"    let g:ycm_semantic_triggers = {}
"  endif
"  au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" Set build_dir for latexmk to have a cleaner work dir
"let g:vimtex_compiler_latexmk = {
"        \ 'build_dir' : 'generated_files',
"        \ 'callback' : 1,
"        \ 'continuous' : 1,
"        \ 'executable' : 'latexmk',
"        \ 'hooks' : [],
"        \ 'options' : [
"        \   '-verbose',
"        \   '-file-line-error',
"        \   '-synctex=1',
"        \   '-interaction=nonstopmode',
"        \ ],
"        \}


" You complete me stop asking questions
"let g:ycm_show_diagnostics_ui = 0
"
" Enables code following in .vimrc
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END









