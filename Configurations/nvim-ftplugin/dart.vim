:autocmd BufWritePost *.dart silent execute '!kill -SIGUSR1 "$(cat /tmp/flutter.pid)"'
let dart_format_on_save = 1
let dart_style_guide = 2
let g:rainbow_active = 1
