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
nnoremap <Leader>y "+y
vnoremap <Leader>y "+y
nnoremap <Leader>p "+gP
vnoremap <Leader>p  "+gP


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


"FZF  :find a file in directory
nnoremap <space>p :FZF<CR>
vnoremap <space>p :FZF<CR>

" BLines : Search for a strig inside a file <buffer>
nnoremap <space>l :BLines<CR>
vnoremap <space>l  :BLines<CR>
" blines : search for a strig inside all files <all buffers>
nnoremap <space>L :Lines<cr>
vnoremap <space>L  :Lines<cr>
" blines : search for a strig inside all files <all buffers>
nnoremap <space>B :Buffers<cr>
vnoremap <space>B  :Buffers<cr>

" Files  : same as fzf but with file preview
nnoremap <space>O :Files<CR>
vnoremap <space>O  :Files<CR>
" RipGrep :search for a string inside directory
nnoremap <C-f> :Rg<CR>
vnoremap <C-f>  :Rg<CR>


"Creating Sessions and Manage them
 nnoremap <Leader>s :SLoad       "load a sessiony
 nnoremap <Leader>ss :SSave[!]    "save a session
 nnoremap <Leader>sd :SDelete[!]  "delete a session
 nnoremap <Leader>sc :SClose      "close a session



" Signify git Jump though hunks
" Leader + gj : Jumps to next hunk of change
nmap <leader>gj <plug>(signify-next-hunk)
" Leader + gk : Jumps to prev hunk of change
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk
" Leader + tg : toggle git indicators
nmap <leader>tg :SignifyToggle<CR>
" Leader + th : toggle highlight of lines
nmap <leader>th :SignifyToggleHighlight<CR>

" git Fugitive / Rhubarb keys
" Leader + ga : git add
nmap <leader>ga  :Git add
" Leader + gc : git commit
nmap <leader>gc :Git commit
" Leader + gp : git push
nmap <leader>gp :Git push

nmap <leader>gg :Git pull

nmap <leader>gd :Git diff
" Load diff in seprate windows
nmap <leader>gs Gdiffsplit

nmap <leader>gl :Git log

nmap <leader>gb :Git blame
" opens a summary window with dirty files and unpushed and unpulled commits
nmap <leader>g :Git
" open the current file on the web front-end of your favorite hosting provider
nmap <leader>gb GBrowse
" Leader + gv : git commit browser
nmap <Leader>gv :GV
"will only list commits that affected the current file
nmap <leader>gf :GV!         
"fills the location list with the revisions of the current file
nmap <leader>gr :GV?         
" Visual mode (select line) -> Leader + gt 
nmap <leader>gt :GV          "or :GV? can be used in visual mode to track the changes in the selected lines.
"Mappings
"o or on a commit to display the content of it
"o or on commits to display the diff in the range
"O opens a new tab instead
"gb for :Gbrowse
"]] and [[ to move between commits
". to start command-line with :Git [CURSOR] SHA à la fugitive
"q or gq to close


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
