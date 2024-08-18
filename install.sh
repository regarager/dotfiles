yay -S stow alacritty neovim \
    exa bat catnap \
    hyprland hyprpaper hyprshot hyprlock dunst brightnessctl xdg-desktop-portal-gtk xdg-desktop-portal-hyprland waybar wofi \
    ttf-jetbrains-mono ttf-jetbrains-mono-nerd \
    vesktop

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/alacritty/alacritty-theme .config/alacritty/themes

stow --adopt .

nvim -c "PackerInstall"
