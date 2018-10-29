#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Makes outputs more colorful
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt strings {{{
txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
bakgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset
export PS1_Dark="$txtrst$bldred\u$bldwht$txtrst@$bldcyn\h$bldwht $bldylw\W$bldwht $txtrst\$ "

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
alias trash='mv -t ~/.local/share/Trash/files/'
alias feh='feh --auto-rotate --auto-zoom --keep-zoom-vp'

# Appends to history instead of overwriting
shopt -s histappend
