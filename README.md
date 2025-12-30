# Personal dotfiles


## Install
Clone the repo to home directory and then install.

``` shell
git clone https://github.com/zhuk/dotfiles
cd dotfiles
sh install.sh
```

## Development environment settings

## Basic tools on Ubuntu
```
# install tools
sudo apt-get install git build-essential
sudo apt-get install ninja-build gettext cmake unzip curl
sudo apt install bat ripgrep fzf git-lfs
```

### Zsh
``` shell
# ubuntu install zsh, change to pacman on Arch
sudo apt install zsh
sudo chsh -s /bin/zsh <username>

# install oh-my-zsh
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

# install zsh plugins
git clone git@github.com:zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Install python3 
``` shell
# install pip on ubuntu
sudo apt-get install python3-pip
```

### Neovim 
Build from source to install latest version on Ubuntu
``` shell
# clone and build
git clone git@github.com:neovim/neovim.git
make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/.local/nvim install
```

