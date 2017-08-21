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



" configuration
let g:gruvbox_improved_warnings=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_light='hard'
set background=dark
colo gruvbox

" vim tricks
for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%' ]
  execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

autocmd BufWritePre * :%s/\s\+$//e

set encoding=utf-8 nobomb
set binary
" set noeol
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

set undofile   " Maintain undo history between sessions
set encoding=utf8
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" default config
let mapleader = ','
let maplocalleader = ','

" go settings

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

nmap <leader>m :NERDTreeToggle<CR>
nmap <F2> :NERDTreeFind<CR>
