# .bashrc

# prompt
export PS1='\u:\W $ '
# path
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/mysql/bin/
# common
alias q='quit'
alias c='clear'
alias h='history'
alias pd='pwd'
alias py='python3'
alias pip='pip3'
alias ls='ls -Gaph' # turn on color, sort lex, print dir sym, human file size
alias cp='cp -iv' # prompt for confirmation, display result
alias mv='mv -iv'
alias rm='rm -iv'
# basic git, ex: bg orign master commit_message
alias bg='function _bg(){ git add .; git commit -m "\"$3\""; git push $1 $2; };_bg'
# directories
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias dev='cd ~/Development'
alias pyprj='cd ~/Development/Python'
# show git branch in prompt, if in a git directory
function find_git_branch {
  export git_branch=''
  rev_parse_directory=`git rev-parse --show-toplevel 2> /dev/null`
  if [ -f "$rev_parse_directory/.git/HEAD" ]; then
    export git_branch="`git rev-parse --abbrev-ref HEAD` "
  fi
}
