function docker-remove-all () {
  docker rm $(docker ps -a -q)
}

function docker-stop-all () {
  docker stop $(docker ps -a -q)
}