#! /bin/bash

echo "https://github.com/neovim/neovim/wiki/Installing-Neovim"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm ./nvim.appimage
sudo apt-get install ripgrep
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' &> /dev/null
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim

