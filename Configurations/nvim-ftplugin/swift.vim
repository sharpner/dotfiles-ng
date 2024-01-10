set autoread
autocmd FileType swift autocmd BufWritePost *.swift :silent exec "!swiftformat %"
