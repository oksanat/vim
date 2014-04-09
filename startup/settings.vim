"Show whitespaces
set list listchars=tab:>-,trail:.,extends:>

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set paste

"Show codelines in vim
set number
set tw=79 "width of documents
set nowrap
set fo-=t "do not wrap text while wrapping
set colorcolumn=80
set term=xterm-256color
set t_Co=256

"Set encoding
set encoding=utf-8
setglobal fileencoding=utf-8

"Automatically change the current directory
set autochdir

"Highlight current line
set cursorline
"Enable mouse
set mouse=a
"Enable external copy
set clipboard=unnamedplus

"Display the status line always
set laststatus=2

"No swp files
set noswapfile

"GUI options
if has('gui_running')
    set guioptions-=T
    colorscheme github
    set lines=35
    set columns=160
    set linespace=8
    :winpos 160 90
    set guifont=Monospace\ 12
    set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
    let NERDTreeShowBookmarks=1
    set cursorcolumn
    set guitablabel=%{GuiTabLabel()}
else
    colorscheme candystripe
    let g:Powerline_symbols="compatible"
    let g:NERDTreeDirArrows=0
endif

"Airline
let g:airline_theme="molokai"

"Phpqa
let g:phpqa_codesniffer_args="--standard=Skype"
let g:phpqa_messdetector_autorun = 0

"Easy motion
let g:EasyMotion_leader_key = '<Leader>'

"Python PEP8
let g:flake8_ignore="E501"

" Tells the NERD tree if/when it should change vim's current working directory
let NERDTreeChDirMode=2
