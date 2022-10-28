# .bashrc

# https://dev.to/bowmanjd/store-home-directory-config-files-dotfiles-in-git-using-bash-zsh-or-powershell-the-bare-repo-approach-35l3

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotfiles-tracked='dotfiles ls-tree --full-tree -r --name-only HEAD'
