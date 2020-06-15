# Instalation

### Install zsh
```
sudo apt install zsh
```

### Install fzf and enable
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install -y
```

### Install zimfw
```
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

### Copy configuration files
```
bash ./install.sh
```

### Set zsh as default shell
```
chsh -s $(which zsh)
```

