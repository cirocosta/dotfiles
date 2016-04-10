export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  

export LANG="en_US"
export LC_ALL="en_US.UTF-8"
export EDITOR="vim"
export VISUAL="vim"

export LP_DEV_DIR="$HOME/Development/launchpad-project"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home"
export GOPATH=$HOME/Development/go
export GOROOT=/usr/local/opt/go/libexec

export PATH=$JAVA_HOME/bin:$GOPATH/bin:$GOROOT/bin:$HOME/bin:$PATH

