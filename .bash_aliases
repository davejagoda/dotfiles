alias h='history'
alias mv='mv -i'
alias rm='rm -i'
alias emacs='emacs -nw'
alias s='w | grep "  s0" | wc -l | tr -d " "'
alias t='~/src/github/proggy/osascript/count_safari_tabs.scpt'
alias u='~/src/github/proggy/osascript/count_safari_windows.scpt'
alias v='sw_vers | grep ProductVersion | cut -f 2'
alias y='echo session/tabs/windows/version;s;t;u;v'
alias upperleft='printf "\e[3;0;0t"'
alias 160='printf "\e[8;160;160t"'
alias woz='jobs'
alias japantime='TZ=Japan date -Iseconds'
alias calitime='TZ=US/Pacific date -Iseconds'
