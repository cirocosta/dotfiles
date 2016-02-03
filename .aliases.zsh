# because vim
alias :q='exit'
alias :zsh='exit'

# gradle
alias :gcb='./gradlew clean build -x test'
alias :gcbt='./gradlew clean build test'
alias :gcbti='./gradlew clean build test install'

# kill java process
alias :kjp='ps -eo pid,command | grep "Java" | grep -v grep | awk "{print $1}" | xargs kill -9'
