yay -S zsh stow alacritty neovim zen-browser-bin \
    jenv jdk8-openjdk jdk11-openjdk jdk17-openjdk jdk-openjdk \
    rust \
    eza bat fastfetch fzf zoxide less net-tools github-cli-git battop bashtop thefuck \
    hyprland hypridle hyprpaper hyprshot hyprlock mako \
    brightnessctl xdg-desktop-portal-gtk xdg-desktop-portal-hyprland waybar \
    wofi breeze breeze-gtk qt6ct qt5ct polkit-gnome iwgtk \
    ttf-jetbrains-mono-nerd ttf-space-mono-nerd ttf-comic-shanns-nerd ttf-0xproto-nerd nodejs unzip \
    vesktop

cargo install pokeget

git clone https://github.com/alacritty/alacritty-theme .config/alacritty/themes

jenv add /usr/lib/jvm/java-8-openjdk
jenv add /usr/lib/jvm/java-11-openjdk
jenv add /usr/lib/jvm/java-17-openjdk

stow --adopt .

echo "Run 'nvim' to get start automatic setup for Neovim"
echo $(ls /usr/lib/jvm)
echo "Run 'jenv add /usr/lib/jvm/[latest version]' as listed above (currently should be java-22-openjdk)'"
echo "Enjoy\!"
