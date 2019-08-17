
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

" ファイルタイプごとにスペース幅を指定
" 参考: https://qiita.com/ymiyamae/items/06d0f5ce9c55e7369e1f
" 参考: https://qiita.com/mitsuru793/items/2d464f30bd091f5d0fef
if has("autocmd")
  filetype plugin on
  filetype indent on
  augroup fileTypeIndent
    autocmd!
    autocmd FileType html           setlocal sw=2 sts=2 ts=2 et
    autocmd FileType javascript     setlocal sw=2 sts=2 ts=2 et
    autocmd FileType vue            setlocal sw=2 sts=2 ts=2 et
  augroup END
endif

" MatchTagAlwaysプラグインをVueファイルでも使えるようにする
let g:mta_filetypes = {
  \ 'html' : 1,
  \ 'xhtml' : 1,
  \ 'xml' : 1,
  \ 'jinja' : 1,
  \ 'vue' : 1,
  \}
