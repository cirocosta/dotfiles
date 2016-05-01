# because vim
alias :q='exit'
alias :zsh='exit'

# diffing head
alias :gdh='gd HEAD --color | diff-so-fancy'

# gradle
alias :gcb='./gradlew clean build -x test'
alias :gcbi='./gradlew clean build -x test install'
alias :gcbt='./gradlew clean build test'
alias :gcbti='./gradlew clean build test install'
alias :gcbp='./gradlew clean build -x test pod'
alias :gcbpud='./gradlew clean build -x test pod undeploy deploy'

# kill java process
alias :kjp="ps -eo pid,command | grep \"Java\" | grep -v grep | awk '{print $1}' | xargs kill -9"

# docker
alias :dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias :dpsa='docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias :deval='eval "$(docker-machine env default)"'
alias :devaln1='eval "$(docker-machine env node1)"'
alias :drac='docker rm -f $(docker ps -a -q)' 
alias :dsac='docker stop $(docker ps -aq)' 
alias :dcompose='docker-compose' 
alias :dmachine='docker-machine' 

# git
alias :gru='git fetch upstream && g rebase upstream/master'
alias :gpr='git pull --rebase'
alias :grv='git remote -v'
alias :gcm='git checkout master'
alias gs='gst'

# general
alias vi='vim'
alias json="jq '.' -C | cat"
