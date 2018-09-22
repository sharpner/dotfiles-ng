:autocmd BufWritePost * silent execute '!kill -SIGUSR1 "$(cat ~/flutter.pid)"'
