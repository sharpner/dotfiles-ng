nmap gd :TernDef<CR>

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
" enable jsx everywhere
let g:jsx_ext_required = 0

nmap gd :call LanguageClient_textDocument_definition()<CR>
nmap <leader>lt :call LanguageClient_textDocument_hover()<CR>
nmap <leader>lr :call LanguageClient_textDocument_rename()<CR>
nmap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nmap <leader>ll :call LanguageClient_textDocument_references()<CR>

" Automatically start language servers.
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}

if executable('javascript-typescript-stdio')
let g:LanguageClient_serverCommands['javascript'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['javascript.jsx'] = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands['javascript.jsx.flow'] = ['flow-language-server', '--stdio']
else
  echo "javascript-typescript-stdio not installed!\n"
  :cq
endif

