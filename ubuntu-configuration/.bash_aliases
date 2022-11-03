#----------------------------
#common commands
#----------------------------
#directory
alias cd='new() { cd $1; ls; }; new'
alias ll='ls -al '   #ls相关，这里--color需要根据终端设
alias lx='ls -lhBX '        #sort by extension
alias lz='ls -lhrS  '        #sort by size
alias lt='ls -lhrt'        #sort by date    最常用到，ls -rt，按修改时间查看目录下文件
alias lsd='find . -maxdepth 1 -type d | sort'   #列出所有目录
alias mkdir="mkdir -pv"
#修改命令，shortcut，减短命令长度 -  跳转
alias ..="cd .."
alias cdd="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -='cd -'
# alias cds='echo "`pwd`" > ~/.cdsave'  #cd save : save where i am
# alias cdb='cd "`cat ~/.cdsave`"'
#disk
alias du0="du -hs"
alias du1="du -h -d 1"
alias du2="du -h -d 2"
#text and feil
alias dfind='find ./ -type d -name'  #查找文件夹
alias ffind='find ./ -type f -name'  #查找文件
# alias grep="grep -rnE --color"

alias vi="vim"
alias cp='cp -v'
alias cpr='cp -r'
alias mv='mv -v'
alias chmod='chmod -v --preserve-root'
alias chown='chown -v --preserve-root'
alias df="df -h"
alias last="last -a"
alias free='free -m'
alias lftp="lftp user:pwd@ftpip"
#alias ln='ln -s'
#修改命令，shortcut，减短命令长度
alias sv="sudo vim"      #用sudo编辑文件时
alias vd='vimdiff'  #vim diff两个文件
# some more ls aliases
alias tf='tail -f'  #动态查看文件变化
alias af="awk -F '\t' '{print NF}'"   #查看文件列数，用\t分隔，最常用，其实也可以搞个通用的，接收参数
alias wl='wc -l'    #统计行数
alias hpwd='echo -n "`hostname`:";eval pwd'  #用scp时，展示hostname和pwd

alias cls="clear"   #清屏
alias du0="du -hs"   #磁盘
alias du1="du -h -d 1"
alias du2="du -h -d 2"

alias cman='man -M /usr/local/zhman/share/man/zh_CN'
# alias nginx='sudo /usr/local/nginx/sbin/nginx'
#----------------------------
#git
#----------------------------
alias gitys-log='git log --abbrev-commit --decorate --graph --oneline'
#----------------------------
#creat Trash Mecanics instead of dangerous "rm" cmd
#----------------------------
mkdir -p ~/.Trash  #创建一个目录作为回收站，这里使用的是用户家目录下的trash目录
alias trash='ls ~/.Trash'  # trash 命令显示回收站中的文件
udel() #这个函数的作用是找回回收站下的文件
{
    mv -i ~/.Trash/$@ ./
}
del() #这个函数是将指定的文件移动到指定的目录下，通过将rm命令别名值delete来实现把rm改造成删除文件至回收站
{
    mv $@ ~/.Trash/
}
cleartrash()  #这个函数的作用是清空回收站目录下的所有文件
{
    read -p "clear sure?[n]" confirm
    [ $confirm == 'y' ] || [ $confirm == 'Y' ]  && sudo rm -rf ~/.Trash/*
}

###############################################
# own common cmd
################################################
#计算
calc(){
    echo "$*" | bc
}

#根据文件类型解压
extract(){
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.tar.xz)    tar xvJf $1    ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjvf $1      ;;
            *.tgz)       tar xzvf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
#压缩
mktar(){ tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz(){ tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz(){ tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

#分屏同时打开多个文件
#vim -oN filea fileb filec
vimO(){ #vsp
    vim -O$# $*
}
vimo(){ #vsp
    vim -o$# $*
}

#创建一个目录并跳转到
#make a dir and cd into it
mdcd(){
    mkdir -pv "$@"
    cd "$@"
}

#修复文件权限
# recursively fix dir/file permissions on a given directory
fix() {
    if [ -d $1 ]; then
        find $1 -type d -exec chmod 755 {} \;
        find $1 -type f -exec chmod 644 {} \;
    else
        echo "$1 is not a directory."
    fi
}

#关闭进程
mykill(){
    for var in $@
    do
        ps -el | grep $var - | awk '{print $4}' | xargs kill -9
    done
}

#一个时钟，用到不多
# display a sweet clock
clock () {
    while true; do
        clear;
        echo "";
        echo "    $(date +%r)";
        echo "";
        sleep 1;
    done
}

#保存一个文件到tmp
# save a file to ~/tmp
saveit() {
    cp $1 ${HOME}/tmp/${1}.saved
}

#交换两个文件
# swap two files (comes in handy)
swapfile() {
    mv $1 ${1}.tmp && mv $2 $1 && mv ${1}.tmp $2
}

#查看自己常用命令top n
# View most commonly used commands. depends on your history output format
function used {
    if [[ $1 ]]
    then
        history | awk '{print $4}' | sort | uniq -c | sort -nr | head -n $1
    else
        history | awk '{print $4}' | sort | uniq -c | sort -nr | head -n 10
    fi
}

#最常用，复制一个路径过来时，不用修改，可以到达路径的最深一层目录
#if dir,cd into it. if file ,cd into where the file is
goto(){ [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }


#临时文件
mvtmp(){
    mv $1 ~/tmp/
}
cptmp(){
    cp -r $1 ~/tmp/
}

#-------------------------------------------
#vim and bash setting
#-------------------------------------------
alias reload='source ~/.profile'
alias bashrc='vim ~/.bashrc && reload'
alias bashal='vim ~/.bash_aliases && reload'
alias vimrc='vim ~/.vimrc'
alias nvimrc='vim ~/.vim/init.vim'
#-------------------------------------------
# ctags gtags cscope
#-------------------------------------------
# 建立tags文件
alias genctag='ctags -R --c-kinds=+lpxzL --c++-kinds=+lpxzLANU --fields=+niazS --extras=+q --output-format=e-ctags'
# 建立cscope数据库
alias gencsdb='find `pwd` -name "*.[chsS]" -o -name "*.cpp" -o -name "*.cc" -o -name "*.C", -o -name "*.cxx" > cscope.files && cscope -bkq'
# 建立GTAGS数据库
alias gengtag='find . -name "*.[chsS]" -o -name "*.cpp" -o -name "*.cc" -o -name "*.C", -o -name "*.cxx" > gtags.files && gtags'
# 删除tags文件
alias clnctag='rm -rf tags'
# 删除filename.tags文件
alias clngtag='rm -rf GTAGS GRTAGS GPATH gtags.files'
# 删除GTAGS数据库相关文件
alias clncsdb='rm -rf *cscope.*'
# 删除cscope数据库相关文件
alias clnftag='rm -rf filename.tags'
# clear all
alias clnall='rm -rf filename.tags GTAGS GRTAGS GPATH gtags.files tags *cscope.*'
#-------------------------------------------
# -----------------------------------------------
# powerline
# -----------------------------------------------
if [ -f `which powerline-daemon` ];then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    #. /usr/share/powerline/bindings/bash/powerline.sh
    # . ~/.local/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
    . /usr/share/powerline/bindings/bash/powerline.sh
fi
export TERM="screen-256color"

# common command in speicified terminal
#go to root file of rockchip sdk on A201 board in share file
alias sshgaea='ssh shawn@gaea'

