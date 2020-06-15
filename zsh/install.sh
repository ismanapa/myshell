installCommand="source \$HOME/myzsh.sh"

installed=$(grep -c "$installCommand" $HOME/.zshrc)

if [ $installed -gt 0 ]; then
  echo "myzshrc is installed"
  
else
  echo "installing myzshrc"
  echo "\n$installCommand" >> $HOME/.zshrc
fi

echo 'Copy myzshrc'
cp -r ./myzsh.sh $HOME

echo 'Copy alias'
cp -r ./alias $HOME

echo 'Copy theme'
cp -r ./theme $HOME