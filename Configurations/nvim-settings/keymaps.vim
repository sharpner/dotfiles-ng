let mapleader = ','
let maplocalleader = ','

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>ff :Files<CR>

nmap <leader>m :NERDTreeToggle<CR>
nmap <c-s> :NERDTreeFind<CR>
nmap <leader>s :update<CR>



" Alpha Bindings NCM
nmap <C-Space> <Plug>(ncm2_manual_trigger)
imap <C-Space> <Plug>(ncm2_manual_trigger)

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gR :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> gI :call LanguageClient#textDocument_implementation()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
nnoremap <leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <leader>lS :call LanguageClient#workspace_symbol()<CR>
nnoremap <silent> ga :call LanguageClient#textDocument_codeAction()<CR>
nnoremap <silent> go :call LanguageClient#textDocument_documentSymbol()<CR>

" Alpha bindings - Copied
nnoremap <leader>pf :GitFiles<CR>
nnoremap <leader>p/ :Ag
nnoremap <leader>pr :History<CR>
nnoremap <leader>ps :Snippets<CR>
nnoremap <leader>pc :Commands<CR>

nnoremap <leader>ff :Files<CR>
nnoremap <leader>ft :TagbarToggle<CR>

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
