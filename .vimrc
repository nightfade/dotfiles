syntax enable
syntax on

filetype on

colorscheme desert
set tabstop=4
set expandtab
set shiftwidth=4 " << >> move 4 spaces
set softtabstop=4 " backspace delete 4 spaces
set autoindent
set cindent
set ru

set ignorecase
set smartcase
set linebreak

set incsearch
set hlsearch

set nu

set showmatch

set showcmd
set showmode
set cursorline
highlight CursorLine cterm=NONE ctermbg=18
" set cursorcolumn
" hi Over80 ctermbg=Darkred
" au BufNewFile,BufRead *.* match Over80 '\%>80v.*'
if exists('+colorcolumn')
    set colorcolumn=80
endif


" ctags setting
set tags=tags;
set autochdir

