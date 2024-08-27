yay -S stow alacritty neovim \
    exa bat fastfetch pokeget \
    hyprland hyprpaper hyprshot hyprlock dunst brightnessctl xdg-desktop-portal-gtk xdg-desktop-portal-hyprland waybar wofi \
    ttf-jetbrains-mono ttf-jetbrains-mono-nerd \
    vesktop \
    jenv jdk8-openjdk jdk11-openjdk jdk17-openjdk jdk-openjdk

git clone https://github.com/alacritty/alacritty-theme .config/alacritty/themes

jenv add /usr/lib/jvm/java-8-openjdk
jenv add /usr/lib/jvm/java-11-openjdk
jenv add /usr/lib/jvm/java-17-openjdk

stow --adopt .

echo "Run 'nvim' to get start automatic setup for Neovim"
echo $(ls /usr/lib/jvm)
echo "Run 'jenv add /usr/lib/jvm/[latest version]' as listed above (currently should be java-22-openjdk)'"
echo "Enjoy\!"
