" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da


" Mine
nnoremap <space> za                 " Enable folding with the spacebar

" Ctrl + s : Save all buffers
noremap  <C-s> :wa<CR>
inoremap <C-s> <Esc>:wa<CR>
"
" Ctrl + q : Save and Quit all buffers
noremap  <C-q> :wqa<CR>
inoremap <C-q> <Esc>:wqa<CR>

" Ctrl + Y : copy to system buffer
" Ctrl + P : paste from system buffer
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

" shift + | : vsplit 
nmap <Bar>  <C-W>v<C-W><Right>

" -      : split
nmap -      <C-W>s<C-W><Down>
" .      : moving forward between buffers
nmap .      <C-W>w
" ctrl + c  : close the current buffer
nmap <C-c>  <C-W>c

"change word under cursor with yanked register 
" 'yw (y2w) ...' to copy'
" 'ctrl + j' to replace with the word under cursur
nnoremap <leader>v ciw<C-r>0<ESC>
