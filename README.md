# Dotfiles

Contains dotfiles for my system

## Installation
Clone the repo into $HOME using git

```
$ git clone <repo url>
$ cd dotfiles
```

Then, run the install script `install.sh` **without sudo**.

## Additional

There are several useful files in the `etc` folder (of this repo) that can be placed into subfolders of `/etc`.

- `charge-limit.service` - sets the laptop charge limit to 80% (can be changed) at boot
  - Location: `/etc/systemd/system/charge-limit.service`
- `keyd.conf` - keybindings for `keyd`
  - Location: `/etc/keyd/default.conf`
