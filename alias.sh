# Unix
alias tlf="tail -f"
alias vi='vi -u /usr/share/vim/vimrc'
alias ll="ls -lh"
alias lla="ls -lha"
alias resource=". ~/.bash_profile"
alias aliases="vim ~/ui-engineering-dotfiles/alias.sh && resource"
alias sudo="sudo ";
alias getdown="afplay ~/ui-engineering-dotfiles/Sounds/get-down-on-it.wav"
alias ctu="afplay ~/ui-engineering-dotfiles/Sounds/ctu.wav"
alias needyou="afplay ~/ui-engineering-dotfiles/Sounds/need_you.wav"
alias ctuuu="ctu && ctu && ctu"
alias fuck="~/ui-engineering-dotfiles/fuck"

# Postgres
alias justpg="postgres -D /usr/local/var/postgres"
alias restartpg="pg_ctl -D /usr/local/var/postgres stop -s -m fast && pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias psqlmed="psql medici_rails_development"

# Git
alias rebasemaster="git fetch && git rebase origin/master"
alias gst="git status"
#alias umm="git unmerged"
alias pairoops="(export GIT_EDITOR=echo; git commit --amend --reset-author)"
alias timber='for branch in `git branch -r | awk "{print $1}"`; do echo `git log -1 $branch --pretty=format:"%at:,$branch,%Cblue%cr,%Cred%cn%Creset%n"`;done | column -t -s"," | sort -nr | cut -d ":" -f 2'
#alias doitlive="echo 'LoooooooooooooooooooooooL U SURE BRO?' && git pull --rebase && rake && git push origin HEAD && deploy_p && ctuuu"
alias push_it_song="whisper && afplay ~/ui-engineering-dotfiles/Sounds/push_it.wav"
alias pushit="(push_it_song &) && git push origin HEAD"
#alias letsdothis="rake && git push origin HEAD && rake acceptance deploy && echo 'all done! you guys are a rockstar pair. enjoy...' && push_it_song"
#alias doit="letsdothis"
alias gs='git status'
alias g='git'
alias gb='git checkout -b'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff | $EDITOR'
alias ga='git add'
alias gl='git log'

# Serve this directory on port 8080
alias serve_this="python -m SimpleHTTPServer"

# What is my IP address
alias myip="ifconfig | grep 'inet' | grep -v '127.0.0.1' | cut -d\   -f2"

# js/ts package management
alias nom="npm install && bower install"
alias nombom="npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install"
alias nodebom="npm cache clear && rm -rf node_modules && npm install"
alias ngbom="npm cache clear && rm -rf node_modules && jspm cache-clear && rm -rf jspm_packages && npm install && jspm install"

# Lap warmer
alias warm='nice -n 20 ruby -e "loop {}" &'

# General shortcuts
alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'



function gitdelbr() {
  git push origin --delete $1
  git branch -d $1
}

function gitreb() {
  git fetch && git rebase origin/$1
}

# All-in-one git ad/commit/push
function git-commit() {
  git add --all
  git commit -m $1
  git push origin -u master
}


#----------------
# Review?
#----------------
alias shutup="osascript -e 'set Volume 0'"
alias whisper="osascript -e 'set Volume 2'"
alias shout="osascript -e 'set Volume 10'"
alias oconnellshutup="ssh oconnell \"shutup\""
alias oconnellshout="ssh oconnell \"shout\""
alias maidenshutup="ssh maiden \"shutup\""
alias maidenshout="ssh maiden \"shout\""
alias rebirthpow="curl get.pow.cx/uninstall.sh | sh && curl get.pow.cx | sh"
#----------------
