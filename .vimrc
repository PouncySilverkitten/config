set t_Co=256

syntax enable                               " enable syntax processing
set tabstop=4                               " number of visual spaces per tab (spaces shown in editor for tab character)
set softtabstop=4                           " number of visual spaces when editing
set expandtab                               " expands a press of the enter key to insert tabstop spaces
set number                                  " shows line number
set lazyredraw                              " improves macro execution speed
set showmatch                               " highlight parenthesis-like chars

set incsearch                               " search as characters are entered
set hlsearch                                " highlight matches
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>s :call Visource()<CR><CR>

set foldenable                              " enable folding
set foldlevelstart=10                       " open most folds by default
set foldnestmax=10                          " maximum nested folds is 10
set foldmethod=indent                       " Fold based on indents
nnoremap <space> za

if v:version > 703 || v:version == 703 && has('patch541')
        set formatoptions+=j
endif

match ErrorMsg '\%>120v.\+'
match ErrorMsg '\s\+$'

vnoremap < <gv
vnoremap > >gv

let b:next_toplevel='\v%$\|^(class\|def\|async def)>'
let b:prev_toplevel='\v^(class\|def\|async def)>'
let b:next_endtoplevel='\v%$\|\S.*\n+(def\|class)'
let b:prev_endtoplevel='\v\S.*\n+(def\|class)'
let b:next='\v%$\|^\s*(class\|def\|async def)>'
let b:prev='\v^\s*(class\|def\|async def)>'
let b:next_end='\v\S\n*(%$\|^(\s*\n*)*(class\|def\|async def)\|^\S)'
let b:prev_end='\v\S\n*(^(\s*\n*)*(class\|def\|async def)\|^\S)'

" Nerd Tree
map <F2> :NERDTreeToggle<CR>

" ALE
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_linters = {'python': ['flake8', 'mypy']} ", 'pylint']}

let g:ale_fix_on_save = 1
let g:ale_fixers = {'python': ['isort', 'yapf']}

" Allow forcible writing
cmap w!!    w !sudo tee > /dev/null %

" Colouring
colorscheme badwolf

:highlight BadWhitespace ctermfg=16 ctermbg=9 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1
syntax on

" YCM
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
" Vundle install
" For plugin on github repo use
" Plugin 'tpope/vim-fugitive'
" :PluginList lists configured Plugins
" :PluginInstall installs plugin
" :PluginSearch foo searches for foo
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
Plugin 'w0rp/ale'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fatih/vim-go' 
Plugin 'google/vim-maktaba'
Plugin 'google/vim-coverage'
Plugin 'google/vim-glaive'

call vundle#end()
filetype plugin indent on

call glaive#Install()
Glaive coverage plugin[mappings]

