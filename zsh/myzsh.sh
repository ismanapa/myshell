alias sudo="sudo "

source $HOME/alias/wsl-alias.sh
source $HOME/alias/kube-alias.sh
source $HOME/alias/git-alias.sh
source $HOME/alias/azure-devops-alias.sh
source $HOME/alias/docker-alias.sh

function test_performance () {
  for i in $(seq 1 10); do time zsh -i -c exit; done
}

function cleanTeamsCache () {
  baseDir=$APPDATA/Microsoft/Teams
 
  rm -rf $baseDir/Application\ Cache/Cache/*
  rm -rf $baseDir/Blob_storage/*
  rm -rf $baseDir/Cache/*
  rm -rf $baseDir/databases/*
  rm -rf $baseDir/GPUCache/*
  rm -rf $baseDir/IndexedDB/*
  rm -rf $baseDir/Local\ Storage/*
  rm -rf $baseDir/tmp/*
}

source $HOME/theme/my-theme.zsh
