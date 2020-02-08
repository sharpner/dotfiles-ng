let mapleader = ','
let maplocalleader = ','

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>bb :Buffers<CR>

nmap <c-s> :NERDTreeFind<CR>
nmap <leader>s :update<CR>
nmap <leader>T :Vista!!<CR>
nmap <leader>vf :Vista finder<CR>

" Alpha bindings - Copied
nnoremap <leader>pg :GitFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader>/ :Ag<CR>
nnoremap <leader>pr :History<CR>
nnoremap <leader>ps :Snippets<CR>
nnoremap <leader>pc :Commands<CR>

nnoremap <leader>ft :TagbarToggle<CR>
nmap <silent> gA <Plug>(coc-codeaction-selected)<CR>
nmap <silent> ga <Plug>(coc-codeaction)<CR>

" git
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gl :GV<CR>
nnoremap <leader>gm :Gmerge<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gvc :GV!<CR>
nnoremap <leader>gvq :GV?<CR>
nnoremap <leader>gw :Gwrite<CR>

call esearch#map('<leader>ff', 'esearch')


" Far
nnoremap <leader>F :Farp<CR>
nnoremap <leader>Fd :Fardo<CR>


