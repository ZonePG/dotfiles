" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
" except mac
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-j>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>
nnoremap ∆    :resize -2<CR>
nnoremap ˚    :resize +2<CR>
nnoremap ˙    :vertical resize -2<CR>
nnoremap ¬    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap <esc> <nop>
inoremap <c-[> <nop>
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
" inoremap <c-u> <ESC>viwUi  
" nnoremap <c-u> viwU<Esc>
inoremap <c-u> <esc>BviWUEa

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
inoremap <C-s> <esc>:w<CR>a
" Alternate way to quit
nnoremap <C-q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" cancel highlight search -> move to which-key
" nnoremap <leader>h :nohlsearch<cr>

" ()
onoremap ( i(
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

" {}
onoremap { i{

nnoremap <leader>w :vsplit<CR>:bprevious<CR><C-w>h:bd<CR>

" disable highlight
nnoremap <leader>h :nohlsearch<CR>
