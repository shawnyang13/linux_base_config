" =============================================================================
" vim-plug插件管理
" =============================================================================
call plug#begin('~/.vim/plugged')
"""""""""""""""""""""""""""""""""""
"""杂项
"""""""""""""""""""""""""""""""""""
" vim中文帮助手册
Plug 'yianwillis/vimcdoc'
" C++语法高亮增强
Plug 'octol/vim-cpp-enhanced-highlight'
" 注解和注释
"Plug 'DoxygenToolkit.vim'
Plug 'preservim/nerdcommenter'
" 自动格式化
Plug 'Chiel92/vim-autoformat'
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }
" Taglist插件
Plug 'vim-scripts/taglist.vim', { 'on': 'TlistToggle' }
" 树形目录插件
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }


"""""""""""""""""""""""""""""""""""
"""代码查找和跳转
"""""""""""""""""""""""""""""""""""
" 自动更新tags插件
Plug 'ludovicchabant/vim-gutentags'
" 自动加载切换gtags数据库
Plug 'skywind3000/gutentags_plus'
" 预览 quickfix 窗口 ctrl-w z 关闭
Plug 'skywind3000/vim-preview'
" 最近打开的文件维护插件
Plug 'vim-scripts/mru.vim'
" Plug 'vim-scripts/cscope.vim'
" " 通用函数插件
" Plug 'vim-scripts/genutils'
" " 查找文件插件(依赖于genutils)
" Plug 'vim-scripts/lookupfile'

"""""""""""""""""""""""""""""""""""
""" 代码补齐和检查
"""""""""""""""""""""""""""""""""""
" 自动补全插件YCM
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clang-completer',
            \ 'for': ['s', 'S', 'c', 'h', 'C', 'cpp', 'cc', 'cxx','python', 'py', 'go', 'java', 'js', 'php', 'sh', 'conf', 'vimrc', 'bashrc', 'config', 'ini'] }
" 异步静态代码检查
Plug 'w0rp/ale', { 'for': ['s', 'S', 'c', 'h', 'C', 'cpp', 'cc', 'cxx', 'python', 'py', 'go', 'java', 'js', 'php', 'sh', 'conf', 'vimrc', 'bashrc', 'config', 'ini'] }

" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" " 代码补齐模板
" Plug 'honza/vim-snippets'

"""""""""""""""""""""""""""""""""""
"""界面美观
"""""""""""""""""""""""""""""""""""
" 状态栏插件
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-powerline'
"　折叠插件
Plug 'pseewald/vim-anyfold'
" 主题配色方案
Plug 'rafalbromirski/vim-airlineish'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-janah'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'jpo/vim-railscasts-theme'
Plug 'tpope/vim-vividchalk'
Plug 'joshdick/onedark.vim'

call plug#end()

" =============================================================================
" 编码相关
" =============================================================================
set termencoding=utf-8  " 设置终端显示编码
set encoding=utf-8      " 设置vim内部编码
" 菜单显示编码
set langmenu=zh_CN.UTF-8
" 设置可识别文件编码列表
set fileencodings=utf-8,gb2312,gbk,gb18030,cp936,utf-16,big5,latin1

" =============================================================================
" 基本配置
" =============================================================================
"Leader键设置
let mapleader=','
" 开启文件类型检查,根据不同的文件类型加载不同的插件采用不同的缩进
filetype plugin indent on
syntax on               " 打开语法高亮
set nocompatible        " 不与vi兼容(采用vim自己的操作命令)
set background=dark     " 设置背景色
set cursorline          " 高亮光标所在行
" 高亮行颜色
highlight CursorLine cterm=Bold ctermbg=Black ctermfg=NONE guibg=Black guifg=NONE
"设置主题配色
"colorscheme gruvbox
"colorscheme janah
"colorscheme jellybeans
colorscheme molokai
"colorscheme railscasts
"colorscheme vividchalk
"colorscheme onedark
"colorscheme desert
"colorscheme torte
"colorscheme ron
set number              " 显示行号
set laststatus=2        " 是否显示状态栏(0,1,2)
set ruler               " 在状态栏显示当前光标坐标
set showmode            " 底行显示当前处于哪种模式
set showcmd             " 命令模式下,在底行显示键入的指令
set mouse=r           " 鼠标模式(n,v,i,c,h,a,r,A)
set scrolloff=7         " 垂直滚动时光标距离顶部/底部的行数
set sidescrolloff=7     " 水平滚动时光标距离边缘的字符数
set showmatch           " 光标遇到括号时自动高亮对应的另一个括号
set nobackup            " 不创建备份文件
set noerrorbells        " 出错时不要发出声音
"set visualbell          " 出错时发出视觉提示(通常时屏幕闪烁)
set history=1024        " 记录历史操作的数量
set autoread            " 打开文件监视,如果在编辑中的文件被外部修改则提示
set autowrite           " 跳转时自动保存
" 文件换行符检测列表
set fileformats=unix,dos,mac
set foldenable          " 默认折叠
set foldmethod=marker   " 折叠方式
set guioptions-=T       " gvim不包含工具栏
set guioptions-=m       " gvim不使用菜单栏
set guioptions-=r       " gvim不显示右边滚动条
set guioptions-=l       " gvim不显示左边滚动条
set helpheight=10       " 帮助窗口的最小高度
set helplang=cn,en      " 帮助手册语言
set hidden              " 允许在有未保存的修改时切换缓冲区
set nowrap              " 不自动折行
set helplang=cn         " 中文帮助优先
"自动向上递归查找tags文件
set tags=./tags;

" =============================================================================
" 查找和缩进
" =============================================================================
set tabstop=4           " 制表符宽度(Tab空格数)
set softtabstop=4       " 软制表符宽度(按Tab键和Backspace键时光标跳转的空格数)
set shiftwidth=4        " 缩进宽度(空格数)
set expandtab           " 制表符替换为空格
set autoindent          " 自动缩进
set cindent             " 特别针对C语言的自动缩进
set cinoptions=:0       " 自动缩进方案
set smartindent         " 插入新行时自动缩进
" 启用退格键删除功能
set backspace=indent,eol,start
set whichwrap=h,l       "使用指定的左右移动光标键可以移到前一行和后一行
" 自动补全模式
set complete=.,w,b,u,t,i,d
" 自动补全选项
set completeopt=longest,menuone
set pumheight=10        " 自动补全菜单显示的最多项目数
" 文件和目录名补全忽略的文件
set wildignore=*.bak,*.o,*.e,*~
set wildmenu            " 命令模式下,按Tab键补全命令
" 命令补全模式
set wildmode=longest:list,full
set hlsearch            " 查找时高亮显示匹配结果
set incsearch           " 查找输入时,每输入一个字符,自动跳转到第一个匹配结果
set ignorecase          " 查找时忽略大小写
set smartcase           " 针对只有首字母时大写的查找词不忽略大小写

" =============================================================================
" 自动命令
" =============================================================================
" 打开文件光标自动跳转到上次关闭时的位置
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     exe "normal g'\"" |
            \ endif

" " =============================================================================
" " cscope和qiuckfix快捷键
" " =============================================================================
"
" " 使用分号进入命令模式
" nnoremap <Space> :
" vnoremap <Space> :
"
" " 窗口切换快捷键
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
" inoremap <C-h> <Esc><C-w>h
" inoremap <C-j> <Esc><C-w>j
" inoremap <C-k> <Esc><C-w>k
" inoremap <C-l> <Esc><C-w>l
"
" " 窗口大小调整
" nnoremap + :resize +1<cr>
" nnoremap _ :resize -1<cr>
" nnoremap = :vertical resize +1<cr>
" nnoremap - :vertical resize -1<cr>
"
" " shell命令调用函数
" function! RunShell(Msg, Shell)
"     echo a:Msg . '...'
"     call system(a:Shell)
"     echon 'done'
" endfunction
"
" " vimgrep查找字符串
" nmap <F6> :vimgrep /<C-R>=expand("<cword>")<cr>/ **/*.c **/*.h<cr><C-o>:cw<cr>
" " 生成filename.tags快捷键F7
" nmap <F9> :call RunShell("Generate filename.tags", "genftag.sh")<cr>
" " 生成GTAGS数据库文件快捷键F8
" nmap <F8> :call RunShell("Generate GTAGS.*", 'find . -name "*.[chsS]" -o -name "*.cpp" -o -name "*.cc" -o -name "*.C", -o -name "*.cxx"> gtags.files && gtags')<cr>
" " " 生成tags文件快捷键F9,------> ctag 已由gutentag自动生成以及更新
" " nmap <F7> :call RunShell("Generate tags", "ctags -R --c-kinds=+lpxzL --c++-kinds=+lpxzLANU --fields=+niazS --extras=+q --output-format=e-ctags")<cr>
" " 生成cscope数据库文件快捷键F10
" nmap <F7> :call RunShell("Generate cscope.*", 'find `pwd` -name "*.[chsS]" -o -name "*.cpp" -o -name "*.cc" -o -name "*.C", -o -name "*.cxx"> cscope.files && cscope -bkq')<cr>
" " 更新cscope或者GTAGS数据库快捷键F12
" nmap <F12> :call UpdateDb()<cr>

" =============================================================================
" 插件配置
" =============================================================================
" 不加载standard-plugin，避免高亮匹配括号
let loaded_matchparen = 1
"""""""""""""""""""""""""""""""
" lookupfile.vim
"""""""""""""""""""""""""""""""
" 映射LookupFile快捷键
nmap <Leader>lt :LUTags<cr>
" 映射LUBufs快捷键
nmap <Leader>lb :LUBufs<cr>
" 映射LUWalk快捷键
nmap <Leader>lw :LUWalk<cr>
" 最少输入2个字符才开始查找
let g:LookupFile_MinPatLength=2
" 不保存上次查找的字符串
let g:LookupFile_PreserveLastPattern=0
" 保存查找历史
let g:LookupFile_PreservePatternHistory=1
" 回车打开第一个匹配项目
let g:LookupFile_AlwaysAcceptFirst=1
" 不允许创建不存在的文件
let g:LookupFile_AllowNewFiles=0
" 关闭对搜索结果的字母排序
let g:LookupFile_SortMethod=""
" 向上递归查找tags文件
let g:filename_tags=findfile("filename.tags", ".;")
" 设置tags文件
if filereadable(g:filename_tags)
    let g:LookupFile_TagExpr='"'.g:filename_tags.'"'
endif
" 查找忽略大小写
function! LookupFile_IgnoreCaseFunc(pattern)
    let _tags = &tags
    try
        let &tags = eval(g:LookupFile_TagExpr)
        let newpattern = '\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'
"""""""""""""""""""""""""""""""
" mru.vim
"""""""""""""""""""""""""""""""
" 打开mru快捷键F4
nmap  <F4> :MRU<cr>
"""""""""""""""""""""""""""""""
" man.vim
"""""""""""""""""""""""""""""""
" 启动man插件
source $VIMRUNTIME/ftplugin/man.vim
" man 光标定位的函数
nmap <Leader>mm :Man <C-R>=expand("<cword>")<cr><cr>
" man 2 光标定位的函数
nmap <Leader>m2 :Man 2 <C-R>=expand("<cword>")<cr><cr>
" man 3 光标定位的函数
nmap <Leader>m3 :Man 3 <C-R>=expand("<cword>")<cr><cr>
""""""""""""""""""""""""""""""""
" taglist.vim
""""""""""""""""""""""""""""""""
" 设置打开关闭快捷键
nmap  <leader>t :TlistToggle<cr>
" 自动更新tags列表
let g:Tlist_Auto_Update=1
" 始终解析文件中的tag,不管taglist窗口有没有打开
let g:Tlist_Process_File_Always=1
" 当taglist窗口是最后一个窗口时退出vim
let g:Tlist_Exit_OnlyWindow=1
" 只显示一个文件的tags
let g:Tlist_Show_One_File=1
" 窗口宽度
let g:Tlist_WinWidth=30
" 只显示当前文件的tags
let g:Tlist_Enable_Fold_Column=0
" 高亮显示当前tag
let g:Tlist_Auto_Highlight_Tag=1
" 设置窗口显示在右侧
"let g:Tlist_Use_Right_Window=1
" 打开时光标定位于taglist窗口
let g:Tlist_GainFocus_On_ToggleOpen=1
"""""""""""""""""""""""""""""""""""
" NERDTree.vim
"""""""""""""""""""""""""""""""""""
" 设置打开关闭快捷键F3
nmap  <F3> :NERDTreeToggle<cr>
" 窗口美化
let NERDChristmasTree=1
" 自动调整光标到窗口中心
let NERDTreeAutoCenter=1
" 指定鼠标模式(1.双击打开;2.单目录双文件;3.单击打开)
let NERDTreeMouseMode=2
" 默认显示文件
let NERDTreeShowFiles=1
" 默认显示隐藏文件
let NERDTreeShowHidden=1
" 窗口位置（'left' or 'right'）
let g:NERDTreeWinPos="right"
" 窗口宽度
let g:NERDTreeWinSize=30
" 显示行号
let g:NERDTreeShowLineNumbers=1
" 打开文件后关闭NERDTree窗口
let g:NERDTreeQuitOnOpen=1
" 高亮显示当前行目录或文件
let NERDTreeHightCursorline=1

" """"""""""""""""""""""""""""""""""""""""""
" " cscope配置
" """"""""""""""""""""""""""""""""""""""""""
" " cscope数据库更新完毕回调函数
" function! UpcsCallback(...)
"     execute "cs reset"
" endfunction
" let g:cspath = ''
" " 更新cscope数据库函数
" function! UpdateCsdb(path)
"     if (a:path != '')
"         execute "cd " . a:path
"     endif
"     call job_start("cscope -bkq", {'exit_cb': 'UpcsCallback'})
"     if (a:path != '')
"         execute "cd -"
"     endif
" endfunction
"
" " 更新GTAGS数据库函数
" function! UpdateGtags(f)
"     let l:dir = fnamemodify(a:f, ':p:h')
"     execute "cd " . l:dir
"     call job_start("global -u")
"     execute "cd -"
" endfunction
"
" " 更新cscope或者GTAGS数据库
" function! UpdateDb()
"     if g:csflag == 0
"         call UpdateCsdb(g:cspath)
"     elseif g:csflag == 1
"         call UpdateGtags(expand('<afile>'))
"     else
"     endif
" endfunction
"
" if executable('cscope')
"     " 获取GTAGS目录
"     let s:gtfile = system('global -pq')
"     " 向上递归寻找cscope.files
"     let g:csfile = findfile("cscope.out", ".;")
"
"     " 如果存在cscope.out则获取目录
"     if filereadable(g:csfile)
"         " 设置cscope模式标志
"         let g:csflag = 0
"         " 获取cscope.out目录
"         let s:pathlen = strridx(g:csfile, "cscope.out")
"         let g:cspath = strpart(g:csfile, 0, s:pathlen)
"         " 如果存在GTAGS则获取目录
"     elseif s:gtfile != ""
"         " 设置cscope模式标志
"         let g:csflag = 1
"         " 获取GTAGS目录
"         let g:gtpath = strpart(s:gtfile, 0, strlen(s:gtfile) - 1)
"         " 否则使用gutentags_plus
"     else
"         " 设置cscope模式标志
"         let g:csflag = 2
"     endif
"
"     " cscope程序位置
"     if !exists("g:cspath") && executable('gtags-cscope')
"         " 设置cscope映射的程序
"         set csprg=/usr/local/bin/gtags-cscope
"         if g:csflag == 1
"             " 加载GTAGS
"             execute 'silent cs add ' . g:gtpath . '/GTAGS'
"             " 保存文件后自动更新GTAGS
"             autocmd BufWritePost * call UpdateGtags(expand('<afile>'))
"         endif
"     else
"         " 设置cscope映射的程序
"         set csprg=/usr/bin/cscope
"         " 自动命令查找结果不使用quickfix窗口
"         " autocmd BufReadPost * set cscopequickfix=""
"         " 保存文件后自动更新GTAGS
"         autocmd BufWritePost * call UpdateCsdb(g:cspath)
"         " 加载cscope.out
"         set nocsverb
"         execute 'cs add . g:csfile'
"     endif
"
"     " 显示添加数据库结果
"     set csverb
"     " 使用cstag命令代替tag命令
"     set cst
"     " 优先搜索cscope.out,失败再搜索tags
"     set csto=0
"     " 显示文件路径全名
"     set cspc=0
" endif
"
" " cscope当前窗口直接跳转快捷键
" nnoremap <Leader>fs :cs find s <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>fg :cs find g <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>fd :cs find d <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>fc :cs find c <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>ft :cs find t <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>fe :cs find e <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>ff :cs find f <C-R>=expand("<cfile>")<cr><cr>
" nnoremap <Leader>fi :cs find i <C-R>=expand("<cfile>")<cr><cr>
" nnoremap <Leader>fa :cs find a <C-R>=expand("<cword>")<cr><cr>
"
" " cscope跳转同时新建水平分割窗口快捷键
" nnoremap <Leader>ss :scs find s <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>sg :scs find g <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>sd :scs find d <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>sc :scs find c <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>st :scs find t <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>se :scs find e <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>sf :scs find f <C-R>=expand("<cfile>")<cr><cr>
" nnoremap <Leader>si :scs find i <C-R>=expand("<cfile>")<cr><cr>
" nnoremap <Leader>sa :scs find a <C-R>=expand("<cword>")<cr><cr>
"
" " cscope跳转同时新建垂直分割窗口快捷键
" nnoremap <Leader>vs :vert scs find s <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>vg :vert scs find g <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>vd :vert scs find d <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>vc :vert scs find c <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>vt :vert scs find t <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>ve :vert scs find e <C-R>=expand("<cword>")<cr><cr>
" nnoremap <Leader>vf :vert scs find f <C-R>=expand("<cfile>")<cr><cr>
" nnoremap <Leader>vi :vert scs find i <C-R>=expand("<cfile>")<cr><cr>
" nnoremap <Leader>va :vert scs find a <C-R>=expand("<cword>")<cr><cr>
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " gutentags.vim && gutentags_plus.vim
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
" let g:gutentags_project_root = ['.root', '.svn', '.git', '.project','.www']
" " 所生成的数据文件的名称 "
" let g:gutentags_ctags_tagfile = '.tags'
" " tags模式设置
" let g:gutentags_modules = []
" if executable('ctags')
"     let g:gutentags_modules += ['ctags']
" endif
" if g:csflag == 2 && executable('gtags-cscope')
"     let g:gutentags_modules += ['gtags_cscope']
"     " 光标定位于quickfix窗口
"     let g:gutentags_plus_switch = 1
" endif
" " 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_cache_dir = s:vim_tags
" " 检测 ~/.cache/tags 不存在就新建 "
" if !isdirectory(s:vim_tags)
"     silent! call mkdir(s:vim_tags, 'p')
" endif
" " 配置ctags的参数 "
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+lpxzLANU']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+lpxzL']
" " 如果使用universal ctags需要增加下面一行, old Exuberant ctags does not need
" let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" " 禁用 gutentags 自动加载 gtags 数据库的行为
" " 避免多个项目数据库相互干扰
" " 使用plus插件解决问题
" let g:gutentags_auto_add_gtags_cscope = 0
"
" """"""""""""""""""""""""""""""""""
" " vim-preview.vim
" """""""""""""""""""""""""""""""""
" if g:csflag == 2 && executable('gtags-cscope')
"     " p预览 大P关闭
"     autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
"     autocmd FileType qf nnoremap <silent><buffer> pc :PreviewClose<cr>
"     noremap <Leader>u :PreviewScroll -1<cr> " 往上滚动预览窗口
"     noremap <Leader>d :PreviewScroll +1<cr> "  往下滚动预览窗口
" endif
"""""""""""""""""""""""""""""""""""""""
" YouCompleteMe.vim
"""""""""""""""""""""""""""""""""""""""
" 补全配置脚本, the path
let g:ycm_global_ycm_extra_conf='~/.vim/YouCompleteMe/.ycm_extra_conf.py'
" map
nnoremap <leader>jd :YcmCompleter GoTo<CR> "jump to definition

" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
let g:ycm_key_invoke_completion = '<C-x>'
" 停止显示补全列表(防止列表影响视野),可以按<C-x>重新弹出
let g:ycm_key_list_stop_completion = ['<C-y>']
"回车即选中当前项
inoremap <expr> <CR> pumvisible() ? "\<C-y>\<SPACE>" :"\<CR>"
" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
" 开启YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion = 2
" 开启输入注释时补全
let g:ycm_complete_in_comments = 1
" 开启输入字符串时补全
let g:ycm_complete_in_strings = 1
" 开启注释和字符串中收集补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 关闭函数预览
let g:ycm_add_preview_to_completeopt = 0
" 关闭代码诊断
let g:ycm_show_diagnostics_ui = 0
" 设置标识符补全最小字符数
let g:ycm_min_num_identifier_candidate_chars = 2
" 设置以下语言自动弹出语义补全(默认需要输入'.->::'或者按主动补全组合键)
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,py,python,java,hpp,h,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
" 白名单(以外的文件类型不分析补全)
let g:ycm_filetype_whitelist = {
            \ "s":1,
            \ "S":1,
            \ "c":1,
            \ "C":1,
            \ "cc":1,
            \ "cxx":1,
            \ "cpp":1,
            \ "py":1,
            \ "python":1,
            \ "go":1,
            \ "java":1,
            \ "hpp":1,
            \ "sh":1,
            \ "zsh":1,
            \ "zimbu":1,
            \ "txt":1,
            \ "conf":1,
            \ "vimrc":1,
            \ "bashrc":1,
            \ }
"""""""""""""""""""""""""""""""""
" ALE.vim
"""""""""""""""""""""""""""""""""
"普通模式下警告跳转快捷键
nmap <silent> <Leader>p <Plug>(ale_previous_wrap)
nmap <silent> <Leader>n <Plug>(ale_next_wrap)
"<Leader>x触发/关闭语法检查
nmap <Leader>x :ALEToggle<CR>
"<Leader>y查看错误或警告的详细信息
nmap <Leader>y :ALEDetail<CR>
"始终开启标志列
"let g:ale_sign_column_always = 1
" 错误警告消息格式
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" 文件打开时不进行检查
let g:ale_lint_on_enter = 0
" 文件修改时不进行检查
let g:ale_lint_on_text_changed = 'never'
" 文件保存时进行检查(默认)
let g:ale_lint_on_save = 1
" 指定对应语言的检查工具
let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \   'python': ['flake8'],
            \   'go': ['gofmt', 'golint'],
            \}
" let g:ale_linters_explicit = 1
" 关闭补全功能
let g:ale_completion_enabled = 0
" 禁用高亮显示
"let g:ale_set_highlights = 0
" 自定义error和warning标志
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"""""""""""""""""""""""""""""""
" airline.vim + powerline
"""""""""""""""""""""""""""""""
"powerline的vim路径配置
"set rtp+=~/.local/lib/python3.8/site-packages/powerline/bindings/vim
set rtp+=/usr/share/powerline/bindings/vim
set t_Co=256            " 启用256色
" 使能airline状态栏扩展
let g:airline#extensions#ale#enabled = 1
" 设置主题
" let g:airline_theme='airlineish'
let g:airline_theme='molokai'
" 这个是安装字体后必须设置此项"
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
" set noshowmode
let g:airline_powerline_fonts = 1
" 开启标签栏
let g:airline#extensions#tabline#enabled = 1
" 显示缓冲区编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" " tabline中当前buffer两端的分隔字符
" let g:airline#extensions#tabline#left_sep = ' '
" " tabline中未激活buffer两端的分隔字符
" let g:airline#extensions#tabline#left_alt_sep = '|'
" 缓冲区切换快捷键
nnoremap <Leader>, :bn<cr>
nnoremap <Leader>. :bp<cr>
" 标签区切换
nnoremap <Tab> :tabn<cr>
" 关闭状态显示空白符号计数"
let g:airline#extensions#whitespace#enabled = 0
" 状态栏显示设置
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.maxlinenr = ''
function! AirlineInit()
    call airline#parts#define_accent('mode', 'orange')
    call airline#parts#define_accent('filetype', 'yellow')
    call airline#parts#define_accent('file', 'blue')
    call airline#parts#define_accent('ffenc', 'blue')
    let g:airline_section_a = airline#section#create(['mode', ' ', 'iminsert'])
endfunction
call AirlineInit()
"""""""""""""""""""""""""""""""""""""""
"nerdcommenter
""""""""""""""""""""""""""""""""""""""
"默认在注释界定符后加空格
let g:NERDSpaceDelims = 1
"紧凑多行注释
let g:NERDCompactSexyComs = 1
"注释界定符右对齐，优先级高于代码缩进
let g:NERDDefaultAlign = 'left'
"指定Java的注释界定符作为注释的替换候选
let g:NERDAltDelims_java = 1
"自定义文件类型的注释界定符
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" 允许空行注释
let g:NERDCommentEmptyLines = 1
"取消注释时整理空行
let g:NERDTrimTrailingWhitespace = 1
" 用NERDCommenterToggle检测选中行注释与否
let g:NERDToggleCheckAllLines = 1
" 默认leader cc被占用改注释为cy
nmap [count]<Leader> cy: <plug>NERDCommenterComment
""""""""""""""""""""""""""""
"vim-autoformat
""""""""""""""""""""""""""""""
" "保存时自动格式化代码，针对所有支持的文件（默认格式）
" au BufWrite * :Autoformat
" "手动格式化
" "map <F8> :Autoformat<CR>
" "关闭缩进和空格，避免影响格式
" " let g:autoformat_autoindent = 0
" " let g:autoformat_retab = 0
" " let g:autoformat_remove_trailing_spaces = 0
" "设定以allman(ansi)的风格格式化C/C++代码同时在操作符两边加入空格(即--pad-oper参数)
" let g:formatdef_allman = '"astyle --style=allman --pad-oper"'
" let g:formatters_cpp = ['allman']
" let g:formatters_c = ['allman']
" "python 格式化
" " let g:formatter_yapf_style = 'pep8' "google, facebook, chromium
" let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
" let g:formatters_python = ['autopep8']
" "保存时以shfmt格式化sh
" let g:shfmt_fmt_on_save = 1
""""""""""""""""""""""""""""
"vim-anyfold
""""""""""""""""""""""""""""
autocmd Filetype * AnyFoldActivate " activate for all filetypes
set foldlevel=99  " open all folds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新文件个人信息和文件常用开头
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp,*.c,*.sh,*.py,*.java,*.hpp,*.h exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func! SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Author: shawn")
        call append(line(".")+2, "\# mail: shawn@vibe.us")
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\#########################################################################")
        call append(line(".")+5, "\#!/bin/bash")
        call append(line(".")+6, "")
    elseif &filetype == 'python' || &filetype == 'py'
        call setline(1,"\#!/usr/bin/env python3")
        call append(line("."), "\# -*- coding: utf-8 -*-")
        call append(line(".")+1, "\#########################################################################")
        call append(line(".")+2, "\# File Name: ".expand("%"))
        call append(line(".")+3, "\# Author: shawn")
        call append(line(".")+4, "\# mail: shawn@vibe.us")
        call append(line(".")+5, "\# Created Time: ".strftime("%c"))
        call append(line(".")+6, "\#########################################################################")
        call append(line(".")+7, "")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."),   "    > File Name: ".expand("%"))
        call append(line(".")+1, "    > Copy Right: Hang Zhou Vibe Technology Co., Ltd. ")
        call append(line(".")+2, "    > Author: shawn")
        call append(line(".")+3, "    > Mail: shawn@vibe.us ")
        call append(line(".")+4, "    > Created Time: ".strftime("%c"))
        call append(line(".")+5, " ************************************************************************/")
        call append(line(".")+6, "")
    endif
    if &filetype == 'cpp' || &filetype == 'hpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, " ")
        call append(line(".")+9, "int main(int agrc, char *argv[])")
        call append(line(".")+10, "{")
        call append(line(".")+11, " ")
        call append(line(".")+12, "}")
        call append(line(".")+13, "")
    endif
    if &filetype == 'c' || &filetype == 'h'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "#include<stdlib.h>")
        call append(line(".")+8, "#include<string.h>")
        call append(line(".")+9, "#include<unistd.h>")
        call append(line(".")+10, "#include<pthread.h>")
        call append(line(".")+11, "#include<fcntl.h>")
        call append(line(".")+12, " ")
        call append(line(".")+13, "int main(int agrc, char *argv[])")
        call append(line(".")+14, "{")
        call append(line(".")+15, " ")
        call append(line(".")+16, "}")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc
"""""bug修复"""""
let g:snipMate = { 'snippet_version' : 1 }

