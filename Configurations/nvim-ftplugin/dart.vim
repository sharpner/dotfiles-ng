:autocmd BufWritePost * silent execute '!kill -SIGUSR1 "$(cat ~/flutter.pid)"'
let dart_format_on_save = 1
let dart_style_guide = 2
