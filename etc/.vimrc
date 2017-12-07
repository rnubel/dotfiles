color desert
set nu
set tabstop=2
set shiftwidth=2
set expandtab
retab

set backspace=2

autocmd BufRead,BufNewFile   *.go set noexpandtab

set autoindent

noremap <A-Left> gT
noremap <A-Right> gt

syntax on

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/

function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction

execute pathogen#infect()

nmap <leader>n :NERDTree<cr>

set laststatus=2
