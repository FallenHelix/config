" Remaps
mode

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For >")})<CR>

" create new tabs  {{
nnoremap <leader>t :tabnew<Enter>
" Close all except current tab
nnoremap <leader>\ :tabonly<Enter>
nnoremap <F1> :buffers<CR>:buffer<Space>
" Navigating tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
"Previous and next window
nnoremap <leader>w gt
nnoremap <leader>W gT
" }}
"


" Selection and moving content
vnoremap  J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


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


" Nerd Tree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p


