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
nmap .      <C-W>w

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
" shift + | : vsplit 
nmap <Bar>  <C-W>v<C-W><Right>
" -      : split
nmap -      <C-W>s<C-W><Down>

" ctrl + c  : close the current buffer
nmap <C-c>  <C-W>c

"change word under cursor with yanked register 
" 'yw (y2w) ...' to copy'
" 'ctrl + j' to replace with the word under cursur
nnoremap <leader>v ciw<C-r>0<ESC>

" Coc Mappings
" bookarks

" Leader + b : create/delete a bookmark
nnoremap <Leader>b :CocCommand bookmark.toggle<CR>
" Leader + bc : clear bookmark for the current file
nnoremap <Leader>bc :CocCommand bookmark.clearForCurrentFile<CR>
" Leader + bca : clear bookmark for all files
nnoremap <Leader>bca :CocCommand bookmark.clearForAllFiles<CR>
" Leader + b> : jump to the next bookmark
nnoremap <Leader>b> :CocCommand bookmark.next<CR>
" Leader + b< : jump to the prev bookmark
nnoremap <Leader>b< :CocCommand bookmark.previous<CR>
" Leader + ba :  create a bookmark with annotation
nmap <Leader>ba <Plug>(coc-bookmark-annotate)

" Snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <c-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

"nerd
" ctrl + n : NERDTreeToggle on normalMode
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

