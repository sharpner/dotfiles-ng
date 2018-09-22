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
Plug 'eugen0329/vim-esearch', { 'commit' : '36aeef56058a5a10fb7ab770e73ce74cf3867e92'}
Plug 'editorconfig/editorconfig-vim', { 'on': [] }
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'

" snippets for all programming languages
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips', { 'on': [] }

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
Plug 'Xuyuanp/nerdtree-git-plugin'

" view vim registers e.g. for pasting
Plug 'junegunn/vim-peekaboo'

" tmux integration
Plug 'christoomey/vim-tmux-navigator'

" find and replace helper
Plug 'junegunn/vim-fnr'

" linting setup
Plug 'w0rp/ale'

" ################ colorscheme & eyecandy
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-emoji'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ################ go specific
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }

" ############### Dockerfile specific
Plug 'ekalinin/Dockerfile.vim', { 'for' : 'Dockerfile' }

call plug#end()

" Read all configs in nvim-settings
for f in split(glob('~/.config/nvim/nvim-settings/*.vim'), '\n')
    exe 'source' f
endfor

