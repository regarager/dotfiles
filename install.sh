yay -S zsh stow alacritty ghostty neovim zen-browser-bin \
    jenv jdk8-openjdk jdk11-openjdk jdk17-openjdk jdk-openjdk npm nodejs rust go astyle \
    eza bat fastfetch fzf unzip ripgrep grep git-delta zoxide zsh-syntax-highlighting less net-tools github-cli-git battop bashtop thefuck \
    hyprland hypridle hyprpaper hyprshot hyprlock mako \
    brightnessctl xdg-desktop-portal-gtk xdg-desktop-portal-hyprland waybar \
    wofi breeze breeze-gtk qt6ct qt5ct polkit-gnome xorg-xhost iwgtk iwd networkmanager network-manager-applet \
    bluez bluez-utils overskride \
    ttf-jetbrains-mono-nerd ttf-space-mono-nerd otf-comicshanns-nerd ttf-0xproto-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
    vesktop

cargo install pokeget

echo "Adopting dotfiles..."
stow --adopt .
echo "Finished copying dotfiles"

git clone https://github.com/alacritty/alacritty-theme .config/alacritty/themes
git clone https://github.com/Aloxaf/fzf-tab ~
git clone https://github.com/regarager/shiko-prompt ~

echo "Setting up git-delta options"
git config --global core.pager delta
git config --global interactive.diffFilter 'delta --color-only'
git config --global delta.navigate true
git config --global delta.theme OneHalfDark
git config --global merge.conflictStyle zdiff3
echo "Finished setting up git-delta options"

echo "Run 'nvim' to get start automatic setup for Neovim"
echo "Run 'java_setup.sh' for Java setup with jenv"
echo "Run 'blackarch_setup.sh' to add the Blackarch repository"
echo "Enjoy\!"
