filetype plugin indent on
syntax on

au BufNewFile,BufRead BUILD set filetype=python
au BufNewFile,BufRead WORKSPACE set filetype=python
au BufNewFile,BufRead *.bzl set filetype=python

"source ~/code/protobuf/protobuf/editors/proto.vim

" When editing a file, always jump to the last cursor position
au BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

set ruler
set hlsearch

nnoremap <C-l> :let @/ = ""<CR>

let _curfile = expand("%:t")
if _curfile =~ ".*\.go"
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
else
  set expandtab
  set tabstop=2
  set shiftwidth=2
endif

set autoindent
set smartindent

set viminfo='20,<1000
