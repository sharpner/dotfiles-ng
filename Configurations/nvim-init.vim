" plugin setup
call plug#begin('~/.vim/plugged')

" fuzzy setup
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" editorconfig
Plug 'editorconfig/editorconfig-vim', { 'on': [] }

" vim-go is just awesome
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'

" colorschemes
Plug 'morhetz/gruvbox'

call plug#end()

" Read all configs in nvim-settings
for f in split(glob('~/.config/nvim/nvim-settings/*.vim'), '\n')
    exe 'source' f
endfor

let g:esearch = {
    \ 'adapter':    'ag',
    \ 'backend':    'nvim',
    \ 'out':        'win',
    \ 'batch_size': 1000,
    \ 'use':        ['visual', 'hlsearch', 'last'],
    \}


