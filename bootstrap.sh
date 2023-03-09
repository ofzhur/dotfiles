#!/bin/bash


# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# download plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/ChesterYue/ohmyzsh-theme-passion ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/ohmyzsh-theme-passion
cp -vf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/ohmyzsh-theme-passion/passion.zsh-theme ~/.oh-my-zsh/themes/

# set zshrc
cp -vf ~/.zshrc ~/.zshrc.bak
cp -vf .zshrc ~/.zshrc
