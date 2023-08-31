dotfiles

# zshrc

Looks for ohmyzsh and other goodies.
* ohmyzsh
* [powerlevel10k](https://github.com/romkatv/powerlevel10k#getting-started)

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

generally too, teh dotfiles folder should be at ~/git/dotfiles

``` 
echo "ohmyzsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo ".zshrc"
ln -s -f `pwd`/.zshrc ${HOME}/.zshrc 
ln -s -f `pwd`/gitignore-global ${HOME}/.gitignore 
git config --global core.excludesfile ~/.gitignore

sudo apt -y install socat unzip

echo "Get npiperelay"
mkdir -p ~/bin
cd ~/bin
wget https://github.com/jstarks/npiperelay/releases/latest/download/npiperelay_windows_amd64.zip
unzip -o npiperelay_windows_amd64.zip npiperelay.exe
rm npiperelay_windows_amd64.zip

echo "install fonts from https://github.com/romkatv/powerlevel10k#manual-font-installation"
```

### Drag windows with ctrl+cmd

https://mmazzarolo.com/blog/2022-04-16-drag-window-by-clicking-anywhere-on-macos/

`defaults write -g NSWindowShouldDragOnGesture -bool true`


### Other mac apps

* brew
* maccy ( clipboard manager) 
* rectangle ( window arranger)

