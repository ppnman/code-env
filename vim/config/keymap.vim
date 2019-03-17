""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Keymaps                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ,代替<leader>
let mapleader=","

" Q 执行存储在寄存器q中的宏
nnoremap Q @q

" Y 复制当前位置到行尾之间的内容
nnoremap Y y$

" F7 打开/关闭粘贴模式
set pastetoggle=<F7>

" \\ 关闭高亮显示搜索项
nnoremap <silent> \\ :nohlsearch<CR>

" 在全文范围内替换光标处的单词
nnoremap <leader>s :%s/\<<C-R><C-W>\>//g<left><left>

" M 移动到匹配的符号处
nnoremap M %

" gm 移动到行尾
noremap gm $

" gn 移动到行首
noremap gn ^

" * 搜索并使光标保持在原位置
nnoremap * *N

" 插入模式下另起一行
inoremap <C-O> <ESC>o

""""""""""""""""
"  copy/paste  "
""""""""""""""""
" <C-C> 复制到系统粘贴板
nnoremap <C-C> "+yy
cnoremap <C-C> "+y

" <C-V> 从系统粘贴板粘贴
nnoremap <C-V> "+p

"""""""""""""""
"  save/exit  "
"""""""""""""""
" <leader>q 退出文件
nnoremap <leader>q :q<CR>

" <leader>a 退出所有文件
nnoremap <leader>a :qa<CR>

" <leader>w 保存文件
nnoremap <leader>w :w<CR>

" <leader>x 保存并退出文件
nnoremap <leader>x :x<CR>

"""""""""""""""""
"  multiwindow  "
"""""""""""""""""
" <C-J> 移动到下边的窗口 
nnoremap <C-J> <C-W><C-J>

" <C-K> 移动到上边的窗口 
nnoremap <C-K> <C-W><C-K>

" <C-L> 移动到右边的窗口 
nnoremap <C-L> <C-W><C-L>

" <C-H> 移动到左边的窗口 
nnoremap <C-H> <C-W><C-H>

""""""""""""
"  insert  "
""""""""""""
" <SPACE>s 插入ipdb.set_trace()
nnoremap <SPACE>s Oimport ipdb; ipdb.set_trace(context=7)<ESC>

" <SPACE>j 在当前行的下方插入空行
nnoremap <SPACE>j o<ESC>k

" <SPACE>k 在当前行的上方插入空行
nnoremap <SPACE>k O<ESC>j

" <SPACE>h 在光标的左边插入空格
nnoremap <SPACE>h i<SPACE><ESC>l

" <SPACE>l 在光标的右边插入空格
nnoremap <SPACE>l a<SPACE><ESC>h

""""""""""""
"  buffer  "
""""""""""""
" F3 显示缓冲区
nnoremap <F3> :buffers<CR>

" [b 下一个缓冲区
nnoremap [b :bnext<CR>

" ]b 上一个缓冲区
nnoremap ]b :bprevious<CR>

" [d 删除当前缓存区
nnoremap [d :bdelete<CR>

"""""""""""
"  marks  "
"""""""""""
" <F4> 显示所有书签
nnoremap <F4> :marks<CR>

" ]d 删除当前缓存区所有书签
nnoremap ]d :delmarks!<CR>

""""""""""""""""""
"  command mode  "
""""""""""""""""""
" ;进入命令行模式
nnoremap ; :
vnoremap ; :

" <C-J> 下一条命令
cnoremap <C-J> <down>

" <C-K> 上一条命令
cnoremap <C-K> <up>

""""""""""""""
"  run code  "
""""""""""""""
" <F5> 在tmux的另一个窗格中执行上一条命令
nnoremap <F5> :call RunCode()<CR>
fu! RunCode()
    exec "w"
    exec "AsyncRun! tmux send-keys -t 0:0.1 C-P C-J"
endf
