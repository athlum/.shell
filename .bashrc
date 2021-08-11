user=$(whoami)

export GOPATH="/Users/$user/dev/workspace"
export PATH=$PATH:/usr/local/go/bin:/Users/$user/workspace/bin:/opt/apache-maven-3.6.3/bin:/usr/local/bin:/opt/homebrew/bin
export PATH=$PATH:/usr/local/kubebuilder/bin
export PATH=$PATH:/Users/$user/Library/Python/2.7/bin
alias gh="cd /Users/$user/workspace/src/github.com/athlum"
alias gts="git status"
alias gtp="git push"
alias gtc="git commit"
alias gtd="git diff"
alias gta="git add"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export GO111MODULE=on
export GOPRIVATE=gitlab.alibaba-inc.com
export GOPROXY=https://goproxy.io

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/jre
export GIT_TERMINAL_PROMPT=1

alias vi="/opt/homebrew/Cellar/neovim/0.5.0/bin/nvim"
alias vim="/opt/homebrew/Cellar/neovim/0.5.0/bin/nvim"

function ToggleProxy() {
    if [ $HTTP_PROXY ]; then
        unset HTTP_PROXY HTTPS_PROXY
        echo "proxy unset"
    else
        export HTTP_PROXY=http://127.0.0.1:8001
        export HTTPS_PROXY=http://127.0.0.1:8001
        echo "proxy set"
    fi
}

alias tp="ToggleProxy"

alias typegvk="kubectl get -o=jsonpath=\"group: {.spec.group}{'\n'}version: {.spec.version}{'\n'}names:{'\n'}  kind: {.spec.names.kind}{'\n'}  plural: {.spec.names.plural}{'\n'}  singular: {.spec.names.singular}{'\n'}\""
alias crowner="kubectl get -o=jsonpath=\"ownerReferences:{'\n'}{range .metadata.ownerReferences[*]}- apiVersion: {.apiVersion}{'\n'}  kind: {.kind}{'\n'}  name: {.name}{'\n'}  uid: {.uid}{'\n'}{end}\""

source <(kubectl completion zsh)
KUBE_EDITOR=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
