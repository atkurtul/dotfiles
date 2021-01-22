#!/usr/bin/bash


sudo apt install curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo apt install libxcb1-dev libxcb-render0-dev libxcb-xfixes0-dev libxcb-shape0-dev libfontconfig-dev
cargo install alacritty

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator `which alacritty` 100
