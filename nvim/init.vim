
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'igruvbox-community/gruvbox'
Plug 'gruvbox-community/gruvbox'
call plug#end()

Plug 'igruvbox-community/gruvbox'

" Colour scheme
colorscheme  gruvbox
highlight Normal
" Later guibg=none

" Remaps

mode

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For >")})<CR>


" Vinyl code
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup SHUBHAM
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
