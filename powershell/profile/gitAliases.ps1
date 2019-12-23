function gs {
    git status
}

function gch {
    git checkout $args
}

function gadd {
    git add --all
}

function glog {
    git log --oneline --all --graph --decorate
}

function gbclean {
    git for-each-ref --format '%(refname:short)' refs/heads --merged | ForEach-Object { If ("develop", "master" -notcontains $_) { git branch $_ -d } }
}

function gb {
    git branch
}

