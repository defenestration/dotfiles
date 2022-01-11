dotfiles

# zsh
.zshrc for osx

also you will want 
https://github.com/thiderman/doge


## install

install ohmyzsh,doge, other brew stuff?

```sh
# untested
ln -s -f ${HOME)/.zshrc `pwd`/.zshrc
ln -s -f ${HOME}/.oh-my-zshrc/custom `pwd`/.oh-my-zshrc/custom
ln -s -f ${HOME}/.gitignore `pwd`/gitignore-global
git config --global core.excludesfile ~/.gitignore
```

# iterm2

in iterm2 preferences -> General > Preferences

☑️ load preferences from a custom folder or url -> use folder in dotfiles. 

Save Changes: Save changes automaticaly
