" plugin setup
call plug#begin('~/.vim/plugged')

" ################ global plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'eugen0329/vim-esearch'
Plug 'editorconfig/editorconfig-vim', { 'on': [] }
" change working directory to project working directory
Plug 'airblade/vim-rooter'
" display vim marks
Plug 'kshenoy/vim-signature'
" realtime search
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'
" git integration
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" view vim registers e.g. for pasting
Plug 'junegunn/vim-peekaboo'

" ################ colorscheme
Plug 'morhetz/gruvbox'

" ################ go specific
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }

" ################ js specific

call plug#end()

" Read all configs in nvim-settings
for f in split(glob('~/.config/nvim/nvim-settings/*.vim'), '\n')
    exe 'source' f
endfor

