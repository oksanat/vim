" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

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
nnoremap <C-q> :tabclose<CR>
nnoremap <C-S-tab> :tabnext<CR>

"Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"Open NerdTree on startup, cursor in a window
map <C-n> :NERDTreeToggle<CR>

"remap copy/paste
vmap <C-c> "*y
vmap <C-insert> "*y
vmap <C-v> p
vmap <S-insert> p

"select all text in normal mode
nmap <C-a> ggVG
