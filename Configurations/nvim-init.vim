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
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'liuchengxu/vista.vim'

" Autocomplete
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'Shougo/denite.nvim'
Plug 'Shougo/echodoc.vim'

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
"Plug 'w0rp/ale'

" ################ colorscheme & eyecandy
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-emoji'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ################ go specific
Plug 'fatih/vim-go', {'tag': '*', 'for': 'go', 'do': ':GoUpdateBinaries'}
"
" ############### Dart specific
Plug 'natebosch/dartlang-snippets'
Plug 'dart-lang/dart-vim-plugin', {'commit': 'db57ccbdea521d22939dfcf129d3a37e9328d16b'}


" ############### JS
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'leafgarland/typescript-vim'

" general languages
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'


call plug#end()

" Read all configs in nvim-settings
for f in split(glob('~/.config/nvim/nvim-settings/*.vim'), '\n')
    exe 'source' f
endfor

