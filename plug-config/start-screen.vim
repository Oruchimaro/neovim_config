" save session dir
let g:startify_session_dir = '~/.config/nvim/session'

" We can specify what shows up in our menu like this:
let g:startify_lists = [
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'files',     'header': ['   Files']            },
            \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \ ]

"Bookmarks
source $HOME/.config/nvim/general/startscrbm.vim

" automatically restart a session like this
let g:startify_session_autoload = 1
"Let Startify take care of buffers
let g:startify_session_delete_buffers = 1
"Similar to Vim-rooter
let g:startify_change_to_vcs_root = 1
"If you want Unicode
let g:startify_fortune_use_unicode = 1
"Automatically Update Sessions
let g:startify_session_persistence = 1
"Get rid of empy buffer and quit
let g:startify_enable_special = 0
"Add a custom header
let g:startify_custom_header = [
         \'                                 █████╗     ███╗   ███╗    ██╗    ██████╗ ',
         \'                                 ██╔══██╗    ████╗ ████║    ██║    ██╔══██╗',
         \'                                 ███████║    ██╔████╔██║    ██║    ██████╔╝',
         \'                                 ██╔══██║    ██║╚██╔╝██║    ██║    ██╔══██╗',
         \'                                 ██║  ██║    ██║ ╚═╝ ██║    ██║    ██║  ██║',
         \'                                 ╚═╝  ╚═╝    ╚═╝     ╚═╝    ╚═╝    ╚═╝  ╚═╝']
