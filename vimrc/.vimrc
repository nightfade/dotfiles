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
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/systags
set tags+=~/.vim/tags/opencvtags
set autochdir

" TagList Setting
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Use_Right_Window=0
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_OnlyWindow=1
" let Tlist_Process_File_Always=1
" let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=40
let Tlist_WinWidth=38

map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5><ESC> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

" NERDTree Setting
let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" Bufexplorer Setting
let g:bufExplorerMinHeight=15

" WinManager Setting
let g:winManagerWindowLayout='NERDTree|BufExplorer,TagList'
let g:persistentBehaviour=0
let g:winManagerWidth=40
let g:defaultExplorer=1
map <c-w><c-t> :WMToggle<cr>
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>

" omni setting
filetype plugin indent on
set completeopt=longest,menuone,menu
" only show preview for python
autocmd FileType python set completeopt+=preview
autocmd FileTYpe python let g:acp_completeoptPreview = 1

" automatically open and close the popup menu / preview window
autocmd CursorMovedI,InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" python omni complete
autocmd FileType python set omnifunc=pythoncomplete#Complete

" OmniCppComplete setting
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
let OmniCpp_SelectFirstItem=2
let OmniCpp_NamespaceSearch=2
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCpp_GolbalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_ShowScopeInAbbr=1
let OmniCpp_ShowAccess=1

