# My dotfiles

This setup is based on this [blog post](https://stegosaurusdormant.com/bare-git-repo/ "Blog post"):

## Setup

```zsh
git init --bare $HOME/.dotfiles
alias dotfiles="GIT_DIR=$DOTFILES_DIR GIT_WORK_TREE=~"
mkdir -p $HOME/.zsh
echo "alias dotfiles=\"GIT_DIR=$DOTFILES_DIR GIT_WORK_TREE=~\"" >> $HOME/.zsh/aliases
dotfiles git remote add origin git@github.com:leo-kenji/.dotfiles.git
```

## Replication

```zsh
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:leo-kenji/.dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```

## Configuration

```zsh
dotfiles git config status.showUntrackedFiles no
dotfiles git remote set-url origin git@github.com:leo-kenji/.dotfiles.git
```

## Usage

```zsh
dotfiles git status
dotfiles git add .gitconfig
dotfiles git commit -m 'Add gitconfig'
dotfiles git push
```
