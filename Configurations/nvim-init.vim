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
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'ervandew/supertab'

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

" autocomplete setup
Plug 'roxma/nvim-completion-manager', { 'do': 'pip3 install --user neovim jedi mistune psutil setproctitle' }
Plug 'roxma/nvim-cm-tern', { 'for': 'javascript', 'do': 'yarn install' }
Plug 'roxma/ncm-flow', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'do': 'yarn install', 'on': ['TernDef', 'TernDoc', 'TernDocBrowse', 'TernType', 'TernDefPreview', 'TernDefSplit', 'TernDefTab', 'TernRefs', 'TernRename'] }

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

" ################ js specific
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'wwwdata/vim-flow', { 'for': 'javascript' }
Plug 'elzr/vim-json', {'for' : 'json'}

" ############### Dockerfile specific
Plug 'ekalinin/Dockerfile.vim', { 'for' : 'Dockerfile' }

" ###############  markdown specific
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'suan/vim-instant-markdown', { 'do': 'yarn global add instant-markdown-d' }

call plug#end()

" Read all configs in nvim-settings
for f in split(glob('~/.config/nvim/nvim-settings/*.vim'), '\n')
    exe 'source' f
endfor

