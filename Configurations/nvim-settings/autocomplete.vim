" note that you must keep `noinsert` in completeopt, you must not use
" `longest`. The others are optional. Read `:help completeopt` for
" more info
set completeopt=noinsert,menuone,noselect,preview
set shortmess+=c

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> lf <Plug>(coc-diagnostic-next)
nmap <silent> lF <Plug>(coc-diagnostic-prev)
nmap <silent> ge <Plug>(coc-refactor)

"nnoremap <silent> <space>o       :<C-u>CocFzfList outline<CR>

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Show signature help while editing
autocmd CursorHoldI * silent! call CocActionAsync('showSignatureHelp')

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

vmap sw <Plug>(coc-codeaction-selected)
"nmap <leader>gA <Plug>(coc-codeaction-selected)

nmap <silent> <C-]> <Plug>(coc-definition)
nmap <silent> gR <Plug>(coc-rename)
nmap <silent> gI <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"nmap <silent> ga <Plug>(coc-codeaction)
"nnoremap <silent> ga       :<C-u>CocFzfList actions<CR>

nmap <silent> zb :CocList <CR>
nmap <silent> zv :CocFzfList diagnostics<CR>
nmap <silent> zc :CocFzfList outline<CR>
nmap <silent> zx :CocFzfList actions<CR>
nmap <silent> gL :CocListResume <CR>

"call coc_fzf#common#add_list_source('fzf-buffers', 'display open buffers', 'Buffers')

" note that you must keep `noinsert` in completeopt, you must not use
" `longest`. The others are optional. Read `:help completeopt` for
" more info
set completeopt=noinsert,menuone,noselect,preview
set shortmess+=c

"
" enter for snippet expand
let g:UltiSnipsSnippetsDir="~/.vim/snippets"

let g:LanguageClient_serverCommands = {
    \ 'dart': ['dart_language_server'],
    \ }


let g:LanguageClient_rootMarkers = {
      \ 'dart': ['pubspec.yaml'],
      \ }
