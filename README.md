# dotfiles

This is the dotfiles that I use in Ubuntu.

## Whats in the box

### Oh-my-zsh

- robbyrussell/bira theme
- zsh-autosuggestions with a bind for ctrl-space to accept a suggestion
- zsh-syntax-highlighting

### fzf and ripgrep

Enables using fuzzy searching for ctrl-r and ctrl-t in the command line.
With ripgrep one can do `rg --files | fzf`.

## Requirements

- [Ubuntu]
- [Go](https://go.dev/) (optional)
- [Meta](https://github.com/oligoden/meta) (optional)
- [Graphviz](https://graphviz.org/) (optional)

## Setup

Start with installing zsh and adding some features to it.

```bash
    sudo apt-get update -y && sudo apt-get install zsh -y
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    sudo sed -i "/${USER}/s/\/bin\/bash/\/usr\/bin\/zsh/" /etc/passwd
    sed -i /ZSH_THEME/s/robbyrussell/bira/ ~/.zshrc
    git clone https://github.com/zsh-users/zsh-autosuggestions.git /home/${USER}/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/${USER}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    sed -i /plugins/s/git/git\ docker-compose\ zsh-autosuggestions\ zsh-syntax-highlighting/ ~/.zshrc
    echo "bindkey '^ ' autosuggest-accept" > ~/.oh-my-zsh/custom/binds.zsh
```

Install ripgrep and fzf

```bash
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    .fzf/install --key-bindings --completion --update-rc
    sudo apt-get install -y ripgrep
```

For Vim, install vim-plug plugin manager. I also like the dragvisuals plugin.

```bash
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    wget https://raw.githubusercontent.com/thoughtstream/Damian-Conway-s-Vim-Setup/master/plugin/dragvisuals.vim -P .vim/plugin
```

Finally installing tmux.

```bash
    sudo apt-get install -y tmux
```

## Manually installing dotfiles

Copy:

- `.vimrc`

file to your home directory. Open vim and run:

```vim
    :PlugInstall
```

inside vim or run:

```bash
    vim +'PlugInstall --sync' +qa
```

or from the terminal outside vim.

