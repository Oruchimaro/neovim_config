" source vimrc : $MYVIMRC

" Plugins File
source $HOME/.config/nvim/vim-plug/plugins.vim

" Settings File
source $HOME/.config/nvim/general/settings.vim
" Disable arrow keys
source $HOME/.config/nvim/general/disableArrowKeys.vim

" Themes
source $HOME/.config/nvim/themes/setTheme.vim

" Airline
source $HOME/.config/nvim/themes/airline.vim

" Signify
source $HOME/.config/nvim/plug-config/signify.vim
" Codi
source $HOME/.config/nvim/plug-config/codi.vim

"php refactoring 
source $HOME/.config/nvim/plug-config/php-refactor.vim
" COC
source $HOME/.config/nvim/plug-config/coc.vim
" IndentLine
source $HOME/.config/nvim/plug-config/indentline.vim
" NerdTree
source $HOME/.config/nvim/plug-config/nerdtree.vim
" markdown
source $HOME/.config/nvim/plug-config/markdown.vim
" FZF
source $HOME/.config/nvim/plug-config/fzf.vim

" Colorizer
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/start-screen.vim

" Floaterm
source $HOME/.config/nvim/plug-config/floaterm.vim

" Lua Files
luafile $HOME/.config/nvim/lua/plug-colorizer.lua

"Which key
source $HOME/.config/nvim/keys/which-key.vim
" Key Mappings
source $HOME/.config/nvim/keys/mappings.vim

