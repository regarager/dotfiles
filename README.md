# Dotfiles

Contains dotfiles for my system

## Requirements

### Git
```
pacman -S git
```

### Stow
```
pacman -S stow
```

## Installation
Clone the repo into $HOME using git

```
$ git clone <repo url>
$ cd dotfiles
```

Then, create symlinks using GNU Stow

```
stow .
```

Alacritty themes (.config/alacritty/themes) come from [here](https://github.com/alacritty/alacritty-theme)
