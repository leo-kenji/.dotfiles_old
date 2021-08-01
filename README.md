# My dotfiles

This setup is based on this [blog post](https://stegosaurusdormant.com/bare-git-repo/ "Blog post"):

## Setup

```zsh
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
mkdir -p $HOME/.zsh
echo "alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zsh/aliases
dotfiles remote add origin git@github.com:leo-kenji/.dotfiles.git
```

## Replication

```zsh
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:leo-kenji/.dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```

## Configuration

```zsh
dotfiles config status.showUntrackedFiles no
dotfiles remote set-url origin git@github.com:leo-kenji/.dotfiles.git
```

## Usage

```zsh
dotfiles status
dotfiles add .gitconfig
dotfiles commit -m 'Add gitconfig'
dotfiles push
```
