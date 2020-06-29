alias kubens='kubectl get ns'

function kubesetns () {
  ns=$(kubectl get ns | fzf --layout reverse  | awk '{print $1}')
  kubectl config set-context --current --namespace="$ns"
}

function kubepods () {
  ns=$(kubectl get ns | fzf --layout reverse | awk '{print $1}')
  kubectl get pods -n "$ns"
}

function kubesvcs () {
  ns=$(kubectl get ns | fzf --layout reverse  | awk '{print $1}')
  kubectl get svc -n "$ns"
}

function kubelogs () {
  ns=$(kubectl get ns | fzf --layout reverse  | awk '{print $1}')
  pod=$(kubectl get pods -n $ns | fzf --layout reverse  | awk '{print $1}')
  
  kubectl logs "$pod" -n "$ns" --tail=50 --follow
} 

function kubeforwardsvc () {
  ns=$(kubectl get ns | fzf --layout reverse  | awk '{print $1}')
  svc=$(kubectl get svc -n $ns | fzf --layout reverse  | awk '{print $1}')
  port=$(kubectl get svc $svc -n $ns --template='{{range .spec.ports}}{{.port}} {{.protocol}}{{"\n"}}{{end}}' | fzf --layout reverse  | awk '{print $1}')

  kubectl port-forward service/"$svc" "$1":"$port" -n "$ns"
} 