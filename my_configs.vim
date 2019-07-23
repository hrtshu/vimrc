
" 行番号を表示
set number

" 行頭・行末での左右移動の際に隣接行に移動しないようにする
set whichwrap-=<,>,h,l

" 色関係の調整
highlight Normal ctermbg=none " 背景色
highlight NonText ctermbg=none " 背景色
highlight IncSearch ctermbg=2 guibg=DarkGreen " ワード検索時のハイライト色

" textwidthで自動改行する場合にマルチバイト文字も対象にする
set formatoptions+=mM

" カレントディレクトリからもVim設定ファイルを読み込めるようにする
set secure
set exrc

" ファイル先頭のモードラインを読み込む
set modeline

" F5を押した時にmakeを実行
nnoremap <F5> :w<CR>:Dispatch!<CR>
inoremap <F5> <Esc>:w<CR>:Dispatch!<CR>

" 括弧を色分けしてくれるプラグインを有効化
let g:rainbow_active = 1
