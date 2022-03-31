dotfiles

# zshrc

Looks for ohmyzsh and other goodies.
* ohmyzsh
* [powerlevel10k](https://github.com/romkatv/powerlevel10k#getting-started)
* also you will want [doge](https://github.com/thiderman/doge)

## install OSX

install ohmyzsh, doge, other brew stuff?

```sh
# untested
ln -s -f `pwd`/.zshrc ${HOME)/.zshrc 
ln -s -f `pwd`/gitignore-global ${HOME}/.gitignore 
git config --global core.excludesfile ~/.gitignore
```

### iterm2

in iterm2 preferences -> General > Preferences

☑️ load preferences from a custom folder or url -> use folder in dotfiles. 

Save Changes: Save changes automaticaly

## Install WSL2

In an Ubuntu 20 using WSL2  you will also want stuff to forward ssh key with keepassxc. see [here](https://code.mendhak.com/wsl2-keepassxc-ssh/)

``` 
ln -s -f `pwd`/.zshrc.wsl2 ${HOME)/.zshrc 
ln -s -f `pwd`/gitignore-global ${HOME}/.gitignore 
git config --global core.excludesfile ~/.gitignore

echo "Get npiperelay"
cd ~
wget https://github.com/jstarks/npiperelay/releases/latest/download/npiperelay_windows_amd64.zip
unzip -o npiperelay_windows_amd64.zip -d npiperelay
rm npiperelay_windows_amd64.zip

echo "Install socat"
sudo apt -y install socat
```
