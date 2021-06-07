let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]


"            \ { 'c': '~/.config/i3/config' },
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.config/zsh/.zshrc' },
            \ '~/myblog/zonepg.github.io',
            \ '~/project',
            \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_custom_header = [
        \ ' _____                    ____  _______          _   __         _    ___         ',
        \ '/__  /  ____  ____  ___  / __ \/ ____( )_____   / | / /__  ____| |  / (_)___ ___ ',
        \ '  / /  / __ \/ __ \/ _ \/ /_/ / / __ |// ___/  /  |/ / _ \/ __ \ | / / / __ `__ \',
        \ ' / /__/ /_/ / / / /  __/ ____/ /_/ /  (__  )  / /|  /  __/ /_/ / |/ / / / / / / /',
        \ '/____/\____/_/ /_/\___/_/    \____/  /____/  /_/ |_/\___/\____/|___/_/_/ /_/ /_/ ',
        \]
                                                                                 

