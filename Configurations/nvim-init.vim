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
Plug 'liuchengxu/vista.vim' " language server symbols tagbar

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
Plug 'tpope/vim-fugitive' " general git integration
Plug 'junegunn/gv.vim' " git commit browser
Plug 'Xuyuanp/nerdtree-git-plugin' " display git changes in nerdtree
Plug 'samoshkin/vim-mergetool' " advanced merging

" view vim registers e.g. for pasting
Plug 'junegunn/vim-peekaboo'

" tmux integration
Plug 'christoomey/vim-tmux-navigator'

" find and replace helper
Plug 'junegunn/vim-fnr'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

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
Plug 'dart-lang/dart-vim-plugin'


" ############### JS
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'leafgarland/typescript-vim'

Plug 'ap/vim-css-color'


call plug#end()

" Read all configs in nvim-settings
for f in split(glob('~/.config/nvim/nvim-settings/*.vim'), '\n')
    exe 'source' f
endfor

" general languages
Plug 'sheerun/vim-polyglot'
