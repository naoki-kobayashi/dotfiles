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

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'


export PATH
# export PATH=~/vim74/bin:$PATH
export EDITOR=vim
export VISUAL=vim
alias vi='vim'
