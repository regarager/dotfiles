pacman -S git stow yay
pacman -S alacritty neovim
pacman -S exa bat
yay -S hyprland hyprpaper brightnessctl hyprshot xdg-desktop-portal-gtk xdg-desktop-portal-hyprland waybar wofi network-manager-applet
yay -S ttf-jetbrains-mono
yay -S vesktop

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/alacritty/alacritty-theme .config/alacritty/themes

stow --adopt .

nvim -c "PackerInstall"
