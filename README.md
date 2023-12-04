# dotfiles

My dotfiles and workspace setup on fedora. [stow](https://www.gnu.org/software/stow/) is used to manage the config files.

inspired by [rednafi](https://rednafi.com/misc/dotfile_stewardship_for_the_indolent/).

## OS pre-(re)install

back up the following:

1. ~/.ssh - keys and configuration

## post-(re)install

1. clone this repo:

```
mkdir -p ~/repos/github.com/lohbe/
cd ~/repos/github.com/lohbe/
git clone git@github.com:lohbe/dotfiles
```

2. run `init.sh`

```
cd dotfiles
chmod +x init.sh && ./init.sh
```
