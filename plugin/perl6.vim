" Get the template path
let s:template_path = fnamemodify(resolve(expand('<sfile>:p')), ':h') . "/../templates"

augroup TemplatesPerl6
    autocmd!

    " Apply skeleton on META6.json creation
    autocmd BufNewFile META6.json execute ":-1r " . s:template_path . "/meta"
    autocmd BufNewFile META6.json :normal! Gdd
    autocmd BufNewFile META6.json :cal cursor(1, 0)
    autocmd BufNewFile META6.json :redraw

    " Apply skeleton on pl6 file creation
    autocmd BufNewFile *.pl6 execute ":-1r " . s:template_path . "/script"
    autocmd BufNewFile *.pl6 :normal! Gdd
    autocmd BufNewFile *.pl6 :cal cursor(5, 0)
    autocmd BufNewFile *.pl6 :redraw

    " Apply skeleton on pm6 file creation
    autocmd BufNewFile *.pm6 execute ":-1r " . s:template_path . "/module"
    autocmd BufNewFile *.pm6 :normal! Gdd
    autocmd BufNewFile *.pm6 :cal cursor(5, 0)
    autocmd BufNewFile *.pm6 :redraw

    " Apply skeleton on t file creation
    autocmd BufNewFile *.t execute ":-1r " . s:template_path . "/test"
    autocmd BufNewFile *.t :normal! Gdd
    autocmd BufNewFile *.t :cal cursor(6, 0)
    autocmd BufNewFile *.t :redraw
augroup END
