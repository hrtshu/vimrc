
set number

set whichwrap-=<,>,h,l

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight IncSearch ctermbg=2 guibg=DarkGreen

set formatoptions+=mM

set secure
set exrc

nnoremap <F5> :w<CR>:Dispatch!<CR>
inoremap <F5> <Esc>:w<CR>:Dispatch!<CR>
