filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'wakatime/vim-wakatime'
Plugin 'scrooloose/nerdtree'
call vundle#end()

" Fast scroll rendering
set ttyfast

" Configure backspacing
set backspace=indent,eol,start

" Allow copy to clipboard with CTRL+SHIFT+C
set clipboard=unnamedplus

" Disable swap files
set noswapfile

" Disable VI compatibility
set nocompatible

" Remove status line
set laststatus=2

" Incremental auto completition
set complete-=i

" Disable mouse usage in all modes
set mouse=

" Show a cursor line
set cursorline

" Change tabs to spaces
set expandtab

" Number of spaces used when pressed tab
set tabstop=4
set shiftwidth=4

" Number of spaces that a <Tab> counts for while performing editing
set softtabstop=4

" Number of lines check in 'set' commands
set modelines=1

" Show an auto completition menu when pressing <Tab>
set wildmenu

" Disable draw of screen when macros/registers and other commands run
set lazyredraw

" When on, splitting a window will put the new window below the current
set splitbelow

" When on, splitting a window will put the new window right of the current one
set splitright

" Search recursively
set path+=**

" No ignore case when searching
set noignorecase

" Incremental search
set incsearch

" Disable highlighting when searching
set hlsearch
hi Search ctermbg=LightYellow

" Ignore directories when searching
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*,*/.hg/*,*/vendor/*,*/bower_components/*,*/node_modules/*
" }}}

" Open find files
map <C-p> <Esc>:find 

" CTRL + HJKL
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" Change tab behavior between file type
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType yml setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2

" Disable sintax highlight
syntax off

" Add left column spacing for better visualization
set foldcolumn=2

" Use light background
set background=light

" Show line numbers
set nu

" Automatically write content of buffer when calling :make or something
set autowrite
set autoread

" Show listchars
set list
set listchars=eol:$
set listchars+=tab:..

" NERDTree customs
map <C-e> <Esc>:NERDTreeToggle<CR>

command! MakeTags !ctags -R .
command! FixWhitespace :%s/\s\+$//e

command! GoImports execute ":silent !goimports -w %" | execute ":redraw!"
map <F5> :GoImports<CR>

" vim-go customs
" map <C-d> :GoDoc 
" map <C-t> :GoTest 
" let g:go_list_type="quickfix"
" let g:go_test_timeout="10s"
" let g:go_fmt_command="goimports"
" let g:go_fmt_autosave = 1

" Ultisnippets
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories = ['.vim/UltiSnips', 'UltiSnips']