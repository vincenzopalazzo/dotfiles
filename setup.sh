#!/bin/bash
sudo apt install screenfetch -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# install doom vim
bash <(curl -s https://raw.githubusercontent.com/doom-neovim/doom-nvim/main/tools/install.sh)

# pull my dots files
git clone https://github.com/vincenzopalazzo/dotfiles.git
cp dotfiles/nvim-doom/* $HOME/.config/nvim/
cp dotfiles/zsh/.zshrc $HOME/
cat $HOME/config/nvim/module.lua


# configure the zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# import my gpg
wget https://gist.githubusercontent.com/vincenzopalazzo/12b151675931cb2850df65c285930f03/raw/9954b7ef5f3c451551fad6770bd0aedee0c6a934/get-gpg.sh
chmod +x get-gpg.sh
./get-gpg.sh
sudo rm -r squashfs-root get-gpg.sh* nvim.appimage dotfiles
