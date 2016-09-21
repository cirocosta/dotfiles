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

# socat
alias :socat='socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock'

# docker
alias :dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias :dpsa='docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias :deval='eval "$(docker-machine env default)"'
alias :devaln1='eval "$(docker-machine env node1)"'
alias :dunset='unset DOCKER_TLS_VERIFY; unset DOCKER_CERT_PATH; unset DOCKER_MACHINE_NAME; unset DOCKER_HOST'
alias :drac='docker rm -f $(docker ps -a -q)' 
alias :drd='docker rmi -f $(docker images -q --filter "dangling=true");docker volume rm $(docker volume ls -qf "dangling=true");'
alias :dsac='docker stop $(docker ps -aq)' 
alias :dkill='docker kill $(docker ps -q)'
alias :dpfix='pkill com.docker.slirp'


# git
alias :gru='git fetch upstream && g rebase upstream/master'
alias :gpr='git pull --rebase'
alias :grv='git remote -v'
alias :gcm='git checkout master'
alias gs='gst'

# general
alias vi='vim'
alias json="jq '.' -C | cat"

# generate keys without pass
alias :genkey='ssh-keygen -t rsa -b 4096 -C "test@liferay.com" -f ./key.rsa -P ""'
