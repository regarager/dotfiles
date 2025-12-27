echo "Installing yay"
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si && cd ..

echo "Installing programs"
yay -S --noconfirm --needed \
  zsh stow ghostty neovim \
  zen-browser-bin nautilus vesktop gthumb \
  mpd rmpc cava \
  bat battop btop cpupower eza fastfetch fzf git-delta github-cli grep imagemagick less net-tools ripgrep thefuck tmux tree-sitter tree-sitter-cli unzip zoxide zsh-syntax-highlighting \
  python-numpy python-pillow miniconda3 conda-zsh-completion \
  jenv jdk8-openjdk jdk11-openjdk jdk17-openjdk jdk-openjdk npm nodejs prettierd uv lua rustup \
  basedpyright rust-analyzer lua-language-server python-black python-isort stylua tinymist \
  hyprland hypridle hyprpaper hyprpicker grimblast hyprlock mako ly waybar keyd brightnessctl xdg-desktop-portal-gtk xdg-desktop-portal-hyprland rofi rofi-power-menu wl-clipboard \
  breeze breeze-gtk qt6ct qt5ct polkit-gnome xorg-xhost networkmanager network-manager-applet systemd-resolvconf \
  bluez bluez-utils overskride \
  maplemono-nf otf-apple-sf-pro noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra  \
  arc-gtk-theme libadwaita-without-adwaita nwg-look \

echo "Rust setup"
rustup default stable

echo "Installing pokeget (for fetch)"
cargo install pokeget

echo "Adopting dotfiles..."
stow --adopt .
echo "Finished copying dotfiles"

echo "Setting up jenv"
jenv add /usr/lib/jvm/*-openjdk
jenv enable-plugin export

echo "Setting up fzf-tab"
git clone https://github.com/Aloxaf/fzf-tab ~/fzf-tab/

echo "Setting up shiko-prompt"
git clone https://github.com/regarager/shiko-prompt ~/shiko-prompt/
cd ~/shiko-prompt/ && SHIKO_THEME=./themes/kanagawa.ron cargo build --release && cd ~

echo "Setting up git-delta options"
git config --global core.pager delta
git config --global interactive.diffFilter 'delta --color-only'
git config --global delta.navigate true
git config --global delta.theme OneHalfDark
git config --global delta.features side-by-side
git config --global merge.conflictStyle zdiff3
git config --global init.defaultBranch master # not git-delta but whatever

echo "Setting up keyd (input remapping)"
systemctl enable --now keyd
sudo cp keyd.conf /etc/keyd/default.conf

echo "Finished setting up git-delta options"

echo "Done!"
