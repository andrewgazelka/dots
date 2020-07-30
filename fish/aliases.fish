# Brew
alias b "brew"
alias bi "brew install"
alias bup "brew update; brew upgrade"
alias bl "brew list"
alias bii "brew cask install"
alias bin "brew info"
alias bs "brew services"
alias bsr "brew services restart"
alias bss "brew services start"

# Vagrant
alias va "vagrant"
alias vai "vagrant init"
alias vau "vagrant up"
alias vas "vagrant ssh"
alias vad "vagrant destroy"
alias vrl "vagrant reload"

# Java
alias j8 "set -x JAVA_HOME $JAVA8_HOME"
alias j11 "set -x JAVA_HOME $JAVA11_HOME"
alias j12 "set -x JAVA_HOME $JAVA12_HOME"
alias j7 "set -x JAVA_HOME $JAVA7_HOME"
alias ja "java"
alias jav "java -version"
alias fern "java -jar ~/.jars/fernflower.jar -dgs=1 -hdc=0 -asc=1 -udv=0 -rsy=1" # FernFlower


# Git
alias git "hub"
alias g "git"
alias gpl "git pull"
alias gP "git push -u origin master"
alias gcl "git clone"
alias ga. 'git add .'
alias gr. 'git reset .'
alias gbb 'git browse --'
alias gb 'git branch -a'
alias gf 'git fetch -a'
alias gbr 'git browse --'
alias gp 'git push'
alias gdiff 'git diff'
alias gd 'git difftool'
alias gco 'git checkout'
alias gc "git commit" 
alias gi "git init"
alias gcr "git create"
alias gcrp "git create -p"
alias gcm "git commit --message"
alias glog "git log"
alias gs "git status"
alias gcd "git add . ; git commit --message='dev'; git push"
alias gcp. "git add .; git commit; git push" 
alias gl "git log --stat"
alias gls "git branch -a --sort=-committerdate"
alias ga 'git add'
alias gap 'git add --patch'
alias gcp 'git commit; git push'
alias gwc "git whatchanged"

# Gradle
alias grw "gradle wrapper --distribution-type all" # Gradle Wrapper Create
alias gri "gradle init"
alias gr "./gradlew"
alias grb "./gradlew build"
alias grd "./gradlew dependencies"
alias grdi "./gradlew dependencyInsight --dependency"


# Yarn
alias y yarn
alias yi "yarn install"
alias ya "yarn add"
alias yaa "yarn global add"
alias ys "yarn start"
alias yit "yarn init"
alias ysd "yarn start:dev"
alias ybp "yarn build --prod"

# Node
alias nn "npm"
alias ni "npm i"
alias nin "npm init"
alias nie "npm i express ejs"
alias naf "npm audit fix"
alias nig "npm i -g"
alias nit "npm init"
alias nr "npm run"
alias nrs "npm run start"
alias nm "nodemon"
alias nu "npm uninstall"


# Nest
alias ne "nest"
alias nen "nest new"
alias neg "nest g"
alias negc "nest g controller"
alias negs "nest g service"


# Firebase
alias fbi "firebase init"
alias fbs "firebase serve"
alias fbd "firebase deploy"
alias fbif "firebase init functions"


# Idea
alias i idea
alias ii "idea ."

# SSH
alias sl "ssh legend@m"
alias sd "ssh donator@m"
alias sc "ssh cannon@m"
alias sb "ssh bungee@m"

# Time
alias ds "date +%s"

# curl
alias cG "curl -G" # get
alias cD "curl -d" # post

# Compression
alias gz gunzip
alias "tc" "tar -czf"
alias "tx" "tar -xzf"

# Python
alias p3 python3
alias p3i "pip3 install"


# tmux
alias rn "tmux rename-window"
alias t "tmux"
alias tl "tmux ls"
alias tat "tmux a -t"
alias ta "tmux a"


# Tree
alias t1 "tree -L 1"
alias t2 "tree -L 2"
alias t3 "tree -L 3"
alias t4 "tree -L 4"

# Maven
alias mi "mvn install"

# Flutter
alias f "flutter" 
alias fpg "flutter pub get"
alias fjs "flutter pub run build_runner build"

# Misc
alias vc "v $HOME/.config/fish/aliases.fish"
alias rp "realpath"
alias lsg "ls | grep -i"
alias o "open"
alias oo "open ."
alias rtb "sudo pkill TouchBarServer" # refresh touchbar
alias pf "printf"
alias np "sudo nmap"
alias lsa "ls -al"
alias lrt "ls -lrt"
alias ul "unlink"
alias lp='lpass show -c --password -G'
alias ll "ls -l"
alias l "ls"
alias ls="exa --git-ignore"
alias lss="exa"
alias le=less

# Editors
alias v "vim"
alias vb 'vim $b'
alias vim=nvim
alias cl clion
alias cll "clion ."


# Python
alias pip=pip3
alias python=python3 


alias rl "readlink -f"
alias p "prevd"
alias reload '. ~/.config/fish/config.fish' # Reload configuration
alias r ranger
alias tree='tree -C' # Make tree colored
alias w wget
alias uz gunzip
alias st "speedtest"

alias cm "chmod +x" 

# Directory
alias . "c $START"
alias .. "c .."
alias ... "c ../.."
alias cdp "c $PROJECTS"
alias uhg "c $PROJECTS/UHG"
alias sa "c $PROJECTS/SA"
alias dl "c $HOME/Downloads" 
## Classes
alias 4 "cd $PROJECTS/School/csci4061"

