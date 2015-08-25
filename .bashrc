# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls --color=tty'
alias la='ls -al --color=tty'
alias dstat='dstat -Tclmdm'
alias ps_m="ps --no-header -e aux | sort -r -k 3 | head -n 20"
alias ps_c="ps --no-header -e aux | sort -r -k 4 | head -n 20"
# mergeの際にconflictが起きたファイルを編集
alias edit-unmerged = "!f() { git ls-files --unmerged | cut -f2 | sort -u ; }; vim `f`"
# master、release以外の現在のブランチにマージされたブランチの削除、git co masterの後に実行する
alias delete-merged-branches = !git branch --merged | grep -v \\* | xargs -I % git branch -d %
# deleteした全てのファイルをgit管理からも外す    
# see http://takezoux2.blogspot.jp/2013/04/gitgit-rm.html
alias rm-all = git st | grep deleted | sed -e 's/^.*deleted: *//' | xargs git rm
# origin/masterの状態に合わせる
alias sync-origin-master = git reset --hard origin/master

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'


export PATH
# export PATH=~/vim74/bin:$PATH
export EDITOR=vim
export VISUAL=vim
alias vi='vim'
