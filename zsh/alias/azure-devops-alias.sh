function prOpen () {
  pr=$(az repos pr list | jq -r '.[] | [ .title, .codeReviewId|tostring] | join(" - ")' | fzf --layout reverse)
  prId=$(echo $pr | awk -F ' - ' '{print $2}')
  az repos pr show --id "$prId" --open -o none
}

function projOpen () {
  projectId=$(az devops project show --detect true -p . --query "value[0].id")
  az devops project show --detect true -p "$projectId" --open -o none
}