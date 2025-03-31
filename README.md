# Dotfiles

Contains dotfiles for my system

## Installation
Clone the repo into $HOME using git

```
$ git clone <repo url>
$ cd dotfiles
```

Install `yay` (an AUR helper) with `sudo pacman -S yay`.

Then, run the install script `install.sh` **without sudo**.

For Java setup (with `jenv`), run `java_setup.sh`.

## Additional

### Networking
Copy the following into `/etc/NetworkManager/NetworkManager.conf`:

```
[connectivity]
enabled=false

[device]
wifi.backend=iwd
```
