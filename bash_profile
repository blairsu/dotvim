export PS1="\[\e[32;1m\]\u\[\e[37;1m\]@\[\e[31;1m\]\h:\[\e[33;1m\]\w>>\[\e[0m\]"
export PATH=/opt/local/bin:~/bin:$PATH

#enables color in the terminal bash shell
export CLICOLOR=1
#sets up the color scheme for list
export LSCOLORS=ExFxCxDxBxegedabagacad
#enables color for iTerm
export TERM=xterm-color
#sets up proper alias commands when called
alias ls='ls -vG'
#use most as man pager
export MANPAGER=most
