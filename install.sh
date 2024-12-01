yay -S zsh stow alacritty neovim zen-browser-bin \
    jenv jdk8-openjdk jdk11-openjdk jdk17-openjdk jdk-openjdk npm nodejs rust \
    eza bat fastfetch fzf unzip ripgrep grep zoxide zsh-theme-powerlevel10k-git zsh-syntax-highlighting less net-tools github-cli-git battop bashtop thefuck \
    hyprland hypridle hyprpaper hyprshot hyprlock mako \
    brightnessctl xdg-desktop-portal-gtk xdg-desktop-portal-hyprland waybar \
    wofi breeze breeze-gtk qt6ct qt5ct polkit-gnome xorg-xhost iwgtk \
    bluez bluez-utils overskride \
    ttf-jetbrains-mono-nerd ttf-space-mono-nerd ttf-comic-shanns-nerd ttf-0xproto-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
    vesktop

cargo install pokeget



stow --adopt .

git clone https://github.com/alacritty/alacritty-theme .config/alacritty/themes
git clone https://github.com/Aloxaf/fzf-tab ~

echo "Run 'nvim' to get start automatic setup for Neovim"
echo "Run 'java_setup.sh' for Java setup with jenv"
echo "Enjoy\!"
