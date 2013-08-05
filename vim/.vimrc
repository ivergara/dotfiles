set nocompatible               " be iMproved
filetype off                   " required!

let mapleader = ","

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required!

Bundle 'gmarik/vundle'

"My Plugins from github sources

Bundle 'tpope/vim-fugitive'
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/pep8'
Bundle 'klen/python-mode'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-rails'

"Bundle 'Lokaltog/vim-powerline'

" Enable TagBar
nmap <F8> :TagbarToggle<CR>

" Enable filetype detection and filetype-specific indenting
filetype plugin indent on

" Syntax highlighting
syntax on
set background=dark

" Code folding
set foldmethod=marker
set foldlevel=99

" prevent vim from adding that stupid empty line at the end of every file
set noeol

" Python PEP8 Checker
let g:pep8_map='<leader>8'

" Python autocomplete (supertab)
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" Window Navigation mapping: Uses Ctrl/Wincmd + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme desert
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set termencoding=utf-8

" Use :help instead
nnoremap <F1> <nop>
" No ex mode
nnoremap Q <nop>
" No man pages because I don't write C or many shell scripts
nnoremap K <nop>

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu, tab autocompletion
set wildmenu
set wildmode=list:longest,full

" Disable output and VCS files
set wildignore+=*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=CVS,.hg,*.a,*.class,*.mo,*.la,*.so,*.swp,*.jpg,*.png,*.xpm,*.gif

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

""
"" Backup, swap and undo files
""

"set backup
"set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

set undodir=~/.vim/undodir
set undofile

" max changes that can be undone
set undolevels=1000

" max lines to save for undo on buffer reload
set undoreload=10000

"Always show current position
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap=b,s,h,l,<,>,[,]

" Underline line
set cursorline

set linespace=0                 " No extra spaces between rows

" Highlight problematic whitespace
" Toggle invisibles, hide by default
set nolist
set listchars=eol:¶,tab:»·,trail:•,extends:>,precedes:<,nbsp:.
nnoremap <leader>l :set list!<CR>

" Turn swap off
set noswapfile

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4               " Let backspace delete indent

" Linebreak on 500 characters
set lbr
set tw=500

set autoindent smartindent    " auto/smart indent
set wrap "Wrap lines

" Formatting

set autoindent                  " Indent at the same level of the previous line
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks

set diffopt=filler,iwhite     " ignore all whitespace and sync
set number                    " line numbers
set more                      " use more prompt
set noautowrite               " don't automagically write on :next
set showmode
set showcmd
set shiftround                " always round indents to multiple of shiftwidth
set copyindent                " use existing indents for new indents
set preserveindent            " save as much indent structure as possible
set history=200
set linebreak
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set shell=bash
set fileformats=unix
set ff=unix
let maplocalleader=','        " all my macros start with ,

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" move on soft lines in insert mode
inoremap <Down> <C-o>g<Down>
inoremap <Up> <C-o>g<Up>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
  endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
set viminfo='100,f1

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y]            " Filetype
set statusline+=\ [%{getcwd()}]          " Current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic Configs
let g:syntastic_auto_jump=1 " Jumps to the first error
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_auto_loc_list=1 " Open location list
" Use jshint (uses ~/.jshintrc)
let g:syntastic_javascript_checkers = ['jshint']

" On by default, turn it off for html
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
    set spl=en spell
    set nospell
endif

"Terminus is AWESOME
set guifont=Terminus\ 10

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" TypeFile Specifics

" Python PEP8
let g:pep8_map='<leader>8'

" Python Autocomplete
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
let g:syntastic_python_checkers=['pylint']


" In Makefiles, use real tabs, not tabs expanded to spaces
au FileType make setlocal noexpandtab

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript

" Set the Ruby filetype for a number of common Ruby files without .rb
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby

" Set markdown specifics
au BufRead,BufNewFile *.md set filetype=markdown

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType cpp set omnifunc=ccomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
