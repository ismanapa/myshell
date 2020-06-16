alias sudo="sudo "

source $HOME/alias/wsl-alias.sh
source $HOME/alias/kube-alias.sh
source $HOME/alias/git-alias.sh
source $HOME/alias/azure-devops-alias.sh

function test_performance () {
  for i in $(seq 1 10); do time zsh -i -c exit; done
}

source $HOME/theme/my-theme.zsh
