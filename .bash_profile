# Nicer file listing
alias ll='ls -al'
alias lh='ls -alh'

#VI --> VIM alias
alias vi='/usr/bin/vim'

# Display path elements on individual lines
alias path='echo $PATH | tr ":" "\n" | sort'

# kernel errors
# dmesg | tail

# CPU Balance
# alias cpu='mpstat -P ALL 1'

# Process usage
# pidstat 1

# disk I/O
# alias diskio='iostat -xz 1'

# Memory usage
# free -m

# network I/O
# alias netio='sar -n DEV 1'

# TCP stats
# alias tcp='sar -n TCP,ETCP 1'

# List top ten largest files/directories in current directory
alias ducks='du -cks *|sort -rn|head -11'

# Show active network listeners
alias netlisteners='lsof -i -P | grep LISTEN'

# Simpleserver
alias simpleserver='python -m SimpleHTTPServer 8888 &'

function _findcode() {
  find . -name .repo -prune -o -name .git -prune -o ${1+"$@"} -print0
}

function jgrep() {
  _findcode -type f -name '*.java' | xargs -0 grep --color -n "$@"
}

# java stuff
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0/Contents/Home
export TOMCAT_HOME=/usr/local/Cellar/tomcat/7.0.42
PATH=${JAVA_HOME}/bin:/usr/local/bin:${PATH}:/usr/local/mysql/bin

# maven 3.1.1 config
export M2_HOME=/usr/local/Cellar/maven31/3.1.1/libexec
export M2=${M2_HOME}/bin
PATH=${M2}:${PATH}:
PATH="$PATH:/usr/local/Cellar"

# Sublime Command line support
PATH="$PATH:~/bin/"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Magic thread variable for MiniTest framework
export N=20

# Homebrew sbin
export PATH="/usr/local/sbin:$PATH"
