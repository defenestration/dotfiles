dotfiles

# zshrc

Looks for ohmyzsh and other goodies.
* ohmyzsh
* [powerlevel10k](https://github.com/romkatv/powerlevel10k#getting-started)

## Mac/OSX

install ohmyzsh, other brew stuff?

```sh
# untested, symlink files in this repo, and setup gitigore
mv ~/.zshrc{,.bak}
ln -s -f `pwd`/.zshrc ${HOME)/.zshrc 
mv ~/.gitignore{,.bak}
ln -s -f `pwd`/gitignore-global ${HOME}/.gitignore 
git config --global core.excludesfile ~/.gitignore
```

### OSX: Drag windows with ctrl+cmd

https://mmazzarolo.com/blog/2022-04-16-drag-window-by-clicking-anywhere-on-macos/

`defaults write -g NSWindowShouldDragOnGesture -bool true`


### Other mac apps

* brew
* maccy ( clipboard manager)
* rectangle ( window arranger)

## Windows - Setup WSL2 

In an Ubuntu 20 using WSL2  you will also want stuff to forward ssh key to the WSL VM. see [here](https://code.mendhak.com/wsl2-keepassxc-ssh/)

generally too, the dotfiles folder should be at ~/git/dotfiles

```sh 
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
mkdir -p $HOME/bin
cd $HOME/bin
wget https://github.com/jstarks/npiperelay/releases/latest/download/npiperelay_windows_amd64.zip
unzip -o npiperelay_windows_amd64.zip npiperelay.exe
rm npiperelay_windows_amd64.zip
echo "install fonts from https://github.com/romkatv/powerlevel10k#manual-font-installation"
```

Also may need to update SSH version on windows. See:

* https://superuser.com/questions/1808572/how-to-automate-starting-the-ssh-agent-and-adding-my-keys-in-wsl2-for-windows
* https://github.com/PowerShell/Win32-OpenSSH/wiki/Install-Win32-OpenSSH-Using-MSI#2-update-system-path-required-for-scp-and-sftp
