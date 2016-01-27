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
# merge$B$N:]$K(Bconflict$B$,5/$-$?%U%!%$%k$rJT=8(B
alias edit-unmerged = "!f() { git ls-files --unmerged | cut -f2 | sort -u ; }; vim `f`"
# master$B!"(Brelease$B0J30$N8=:_$N%V%i%s%A$K%^!<%8$5$l$?%V%i%s%A$N:o=|!"(Bgit co master$B$N8e$K<B9T$9$k(B
alias delete-merged-branches = !git branch --merged | grep -v \\* | xargs -I % git branch -d %
# delete$B$7$?A4$F$N%U%!%$%k$r(Bgit$B4IM}$+$i$b30$9(B    
# see http://takezoux2.blogspot.jp/2013/04/gitgit-rm.html
alias rm-all = git st | grep deleted | sed -e 's/^.*deleted: *//' | xargs git rm
# origin/master$B$N>uBV$K9g$o$;$k(B
alias sync-origin-master = git reset --hard origin/master

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'


export PATH
# export PATH=~/vim74/bin:$PATH
export EDITOR=vim
export VISUAL=vim
alias vi='vim'
