
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Gruvbox color theme
Plug 'gruvbox-community/gruvbox'

" Nerd Tree plugins
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'

"Fancy Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fzf fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" COC for auto completion

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

Plug 'sheerun/vim-polyglot'

"Terminal
Plug 'voldikss/vim-floaterm'

call plug#end()
" Colour scheme
colorscheme  gruvbox
highlight Normal
" Later guibg=none



