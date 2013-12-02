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
"set term=xterm-256color
set t_Co=256


"Show whitespaces
"set list
"set listchars=eol:$,tab:>-

"Pathogen
call pathogen#incubate()
call pathogen#helptags()
syntax on
filetype plugin indent on

"Open NerdTree on startup, cursor in a window
map <C-n> :NERDTreeToggle<CR>

"Arrows encoding problems
"let g:NERDTreeDirArrows=0

"Open NERDTreeTabs on console vim startup
let g:nerdtree_tabs_open_on_console_startup=1

"Close NerTree when all files are closed
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                q
            endif
        endif
    endif
endfunction

"Set encoding
set encoding=utf-8
setglobal fileencoding=utf-8
"Highlight current line
set cursorline
"Enable mouse
set mouse=a

"GUI hide toolbar

if has('gui_running')
    set guioptions-=T
    colorscheme eclipse
    set lines=35
    set columns=140
    set linespace=8
    :winpos 200 90
    set guifont=Monospace\ 12
    :cd /home/oksanat/Projects/PHP/stratus
else
    colorscheme candystripe
    let g:NERDTreeDirArrows=0
endif

"Tab navigation
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> 10gt
nnoremap <C-tab> gT

"Phpqa
let g:phpqa_codesniffer_args="--standard=Skype"
let g:phpqa_messdetector_autorun = 0
