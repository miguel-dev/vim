" Vim comments

" Legacy-script comment

# 42 " comment

function! Foo()
  " Legacy-script comment
  # 42 " comment
endfunction

def! Bar()
  # Vim9-script comment
  "useless string" # comment
enddef

command -nargs=1 FooCommand {
  # Vim9-script comment
  "useless string" # comment
}

autocmd BufNewFile * {
  # Vim9-script comment
  "useless string" # comment
}


" Issue: #13047

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


" Issue: #11307 and #11560

" This is what we call " blah


" Issue # #9587

def CommentTitle()
  # Title: ...
enddef
