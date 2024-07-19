pacman -S git stow
pacman -S alacritty nvim
pacman -S exa bat yay
pacman -S hyprland hyprpaper brightnessctl hyprshot xdg-desktop-portal-gtk xdg-desktop-portal-hyprland waybar wofi network-manager-applet
pacman -S ttf-jetbrains-mono
pacman -S vesktop

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
