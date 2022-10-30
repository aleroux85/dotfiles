#!/bin/bash

sudo apt-get update -y && sudo apt-get install -y zsh ripgrep tmux

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo sed -i "/${USER}/s/\/bin\/bash/\/usr\/bin\/zsh/" /etc/passwd
sed -i /ZSH_THEME/s/robbyrussell/bira/ ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/${USER}/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/${USER}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sed -i /plugins/s/git/git\ docker-compose\ zsh-autosuggestions\ zsh-syntax-highlighting/ ~/.zshrc
echo "bindkey '^ ' autosuggest-accept" > ~/.oh-my-zsh/custom/binds.zsh

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
.fzf/install --key-bindings --completion --update-rc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wget https://raw.githubusercontent.com/thoughtstream/Damian-Conway-s-Vim-Setup/master/plugin/dragvisuals.vim -P .vim/plugin