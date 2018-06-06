export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. /Users/henrique/Development/bin/z.sh

alias dkrstart="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"

alias dkrexec="docker exec -it"
alias dkrclean=". ~/Documents/Development/scripts/docker_clean.sh"

alias adb-cast="adb shell screenrecord --verbose ./sdcard/screencast-recording.mp4"
alias adb-list="adb devices"

alias server="python -m SimpleHTTPServer"

alias g="git"
alias gad="git add"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gdf="git diff"
alias gst="git status"
alias gsh="git stash"
alias gsa="git stash apply"
alias gfh="git fetch"
alias gp='git pull'
alias gpl='gp origin `gcurrentbranch`'
alias gph="git push origin head"
alias gdb="git push --delete origin"
alias gundo="git reset --soft HEAD^"
alias gcount="git shortlog -sn"
alias gcurrentbranch="git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'"
alias restartmic="sudo killall coreaudiod"

alias rn="react-native"
alias rni="react-native install"
alias rnl="react-native link"
alias rnra="react-native run-android"
alias rnri="react-native run-ios"

alias db="mongod --dbpath ~/data/db"

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="/Users/Henrique/Library/Python/2.7/bin/:$PATH"
export PATH="/Applications/MacVim.app/Contents/bin/:$PATH"

set -o vi

parse_git_branch() {
  gcurrentbranch | sed -E 's/(.*)/(\1)/'
}

git_status() {
    # Outputs a series of indicators based on the status of the
    # working directory:
    # + changes are staged and ready to commit
    # * unstaged changes are present
    # ? untracked files are present
    # S changes have been stashed
    # P local commits need to be pushed to the remote
    local status="$(git status --porcelain 2>/dev/null)"
    local output=''
    [[ -n $(egrep '^[MADRC]' <<<"$status") ]] && output="$output+"
    [[ -n $(egrep '^.[MD]' <<<"$status") ]] && output="$output!"
    [[ -n $(egrep '^\?\?' <<<"$status") ]] && output="$output?"
    [[ -n $(git stash list 2>/dev/null) ]] && output="${output}S"
    [[ -n $(git log --branches --not --remotes 2>/dev/null) ]] && output="${output}P"
    [[ -n $output ]] && output=" $output"  # separate from branch name
    echo $output
}

PS1='\[\033[1;35m\]\W \[`tput sgr0`\]'
PS1+='\[\033[1;33m\]`parse_git_branch`\[`tput sgr0`\]'
PS1+='\[\033[1;34m\]`git_status` \[`tput sgr0`\]'
PS1+='\[\033[1;32m\]$ \[`tput sgr0`\]'

export PS1

# Git branch bash completion
if [ -f ~/Development/git-completion.bash ]; then
  . ~/Development/git-completion.bash

  # Add git completion to aliases
  __git_complete g __git_main
  __git_complete gco _git_checkout
  __git_complete gm __git_merge
  __git_complete gp _git_pull
  __git_complete gad _git_add
  __git_complete gdf _git_diff
  __git_complete gst _git_status
  __git_complete gsh _git_stash
fi
export ANDROID_HOME=/Users/Henrique/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
