echo "Installing yay"
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si && cd ..

echo "Installing programs"
yay -S --noconfirm --needed \
  zsh stow ghostty neovim \ # necessary
  zen-browser-bin nautilus vesktop gthumb \ # important programs
  bat battop btop cpupower eza fastfetch fzf git-delta github-cli grep imagemagick less net-tools ripgrep thefuck tmux tree-sitter tree-sitter-cli unzip zoxide zsh-syntax-highlighting \ # terminal tools
  python-black python-isort python-numpy python-pillow miniconda3 conda-zsh-completion
  jenv jdk8-openjdk jdk11-openjdk jdk17-openjdk jdk-openjdk npm nodejs prettierd quarto-cli-bin rust-analyzer rustup go astyle lua lua51 luarocks stylua tinymist typst uv \ # programming stuff
  hyprland hypridle hyprpaper hyprsunset grimblast hyprlock mako ly waybar keyd brightnessctl xdg-desktop-portal-gtk xdg-desktop-portal-hyprland rofi wl-clipboard \ # hyprland + other important stuff
  breeze breeze-gtk qt6ct qt5ct polkit-gnome xorg-xhost networkmanager network-manager-applet systemd-resolvconf \ # network + random important things
  bluez bluez-utils overskride \ # bluetooth
  ttf-roboto-mono-nerd otf-comicshanns-nerd maplemono-nf otf-apple-sf-pro noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra # fonts

echo "Rust setup"
rustup default stable

echo "Installing pokeget (for fetch)"
cargo install pokeget

echo "Adopting dotfiles..."
stow --adopt . echo "Finished copying dotfiles"

echo "Setting up jenv"
jenv add /usr/lib/jvm/*-openjdk

echo "Setting up fzf-tab and shiko-prompt"
git clone https://github.com/Aloxaf/fzf-tab ~/fzf-tab/
git clone https://github.com/regarager/shiko-prompt ~/shiko-prompt/

cd ~/shiko-prompt/ && go build && cd -

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

echo "Setting up Blackarch repos"
curl -O https://blackarch.org/strap.sh
chmod +x ./strap.sh
./strap.sh
rm ./strap.sh

echo "Finished setting up git-delta options"

echo "Run 'nvim' to get start automatic setup for Neovim"

echo "=================================================="
echo "Additional info:"
echo "=================================================="
echo "Zen Browser rose-pine theme: https://github.com/rose-pine/zen-browser (into profile `chrome` folder)"
