#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Makes outputs more colorful
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt strings {{{
# Escape sequences {{{
# Use variables for more sane configuration
# Formatting
Bold="\[\e[1m\]"
Dim="\[\e[2m\]"
Underline="\[\e[4m\]"
Blink="\[\e[5m\]"
Invert="\[\e[7m\]"
Hide="\[\e[8m\]"

# Remove formatting
NoFormat="\[\e[0m\]"
UnBold="\[\e[21m\]"
UnDim="\[\e[22m\]"
UnUnderline="\[\e[24m\]"
UnBlink="\[\e[25m\]"
UnInvert="\[\e[27m\]"
UnHide="\[\e[28m\]"

# Foreground
FgDefault="\[\e[39m\]"
FgBlack="\[\e[30m\]"
FgRed="\[\e[31m\]"
FgGreen="\[\e[32m\]"
FgYellow="\[\e[33m\]"
FgBlue="\[\e[34m\]"
FgMagenta="\[\e[35m\]"
FgCyan="\[\e[36m\]"
FgLtGRAY="\[\e[37m\]"
FgDkGRAY="\[\e[90m\]"
FgLtRed="\[\e[91m\]"
FgLtGreen="\[\e[92m\]"
FgLtYellow="\[\e[93m\]"
FgLtBlue="\[\e[94m\]"
FgLtMagenta="\[\e[95m\]"
FgLtCyan="\[\e[96m\]"
FgWhite="\[\e[97m\]"

# Background
BgDefault="\[\e[49m\]"
BgBlack="\[\e[40m\]"
BgRed="\[\e[41m\]"
BgGreen="\[\e[42m\]"
BgYellow="\[\e[43m\]"
BgBlue="\[\e[44m\]"
BgMagenta="\[\e[45m\]"
BgCyan="\[\e[46m\]"
BgLtGRAY="\[\e[47m\]"
BgDkGRAY="\[\e[100m\]"
BgLtRed="\[\e[101m\]"
BgLtGreen="\[\e[102m\]"
BgLtYellow="\[\e[103m\]"
BgLtBlue="\[\e[104m\]"
BgLtMagenta="\[\e[105m\]"
BgLtCyan="\[\e[106m\]"
BgWhite="\[\e[107m\]"

Default="\[\e[m\]"
# }}}

export PS1_Dark="$BgDefault$Bold$FgRed\u$FgWhite$UnBold@$Bold$FgLtCyan\h$FgWhite$UnBold $Bold$FgYellow\W$FgWhite$UnBold \$ "
export PS1_Light="$BgWhite$Bold$FgRed\u$FgBlack$UnBold@$Bold$FgBlue\h$FgBlack$UnBold $Bold$FgMagenta\W$FgBlack$UnBold \$ "

PS1=$PS1_Dark
# }}}

# Man page colors {{{
#
#    terminfo capname  termcap name  description               Color    Code
#    ----------------  ------------  ------------------------  -------  ----
#    bold              md            turn on bold              black    0
#    blink             mb            turn on blinking          red      1
#    sgr0              me            turn off all attributes   green    2
#    smso              so            begin standout mode       yellow   3
#    rmso              se            exit standout mode        blue     4
#    rev               mr            turn on reverse mode      magenta  5
#    dim               mh            turn on half-bright mode  cyan     6
#    rmul              ue            exit underline mode       white    7
#    smul              us            begin underline mode
export MANROFFOPT='-c'
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
export LESS_TERMCAP_md=$(tput bold; tput setaf 3)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
# }}}

# Sets $EDITOR
export VISUAL="/usr/bin/vim"
export EDITOR="$VISUAL"

# Moves things to ~/trash instead of deleting them
alias trash='mv -t ~/trash'

# Appends to history instead of overwriting
shopt -s histappend
