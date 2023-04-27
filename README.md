# My personal dotfiles.


## Install
Clone the repo to home directory and then install.

```
git clone https://github.com/zhuk/dotfiles
cd dotfiles
sh install.sh
```

## Tools to install
### Install zsh
```
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

### Install python3 virtualenv
```
# install pip on ubuntu
sudo apt-get install python3-pip

# pip installed to ~/.local
pip3 install -U virtualenv virtualenvwrapper

# then modify .zshrc
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source $HOME/.local/bin/virtualenvwrapper.sh

# usage
mkvirtualenv venv0
workon
```

### Neovim 
Build from source to install latest version on Ubuntu
```
# install build tools
sudo apt-get install git build-essential
sudo apt-get install ninja-build gettext cmake unzip curl

# build source
git clone git@github.com:neovim/neovim.git
make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/.local/nvim install
```

