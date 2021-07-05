source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/paths.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/commentary.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/neomake.vim
" source $HOME/.config/nvim/plug-config/lsp-config.vim
luafile $HOME/.config/nvim/lua/plugins/plug-colorizer.lua
" luafile $HOME/.config/nvim/lua/plugins/comp-config.lua

""""""""""Some autocmd"""""""""
augroup mygroup
    autocmd!
    autocmd FileType c nnoremap <leader>c I//<space><esc>
    autocmd FileType cpp nnoremap <leader>c I//<space><esc>
    autocmd FileType python nnoremap <leader>c I#<space><esc>
augroup END
""""""""""Some autocmd"""""""""

" abbreviation
iabbrev adn and
iabbrev waht what
iabbrev tehn then

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim :iabbrev <buffer> --- ----------------{{{
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
"
