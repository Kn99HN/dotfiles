#!/bin/zsh

function link {
  local src_file=$1
  local symbolic_link=$2
  ln -s $src_file $symbolic_link
}


link ~/dotfiles/editor/vim/.vimrc ~/.vimrc
link ~/dotfiles/git/gitconfig ~/.gitconfig
link ~/dotfiles/git/gitignore-global ~/.gitignore-global
link ~/dotfiles/shell/zsh/.zshrc ~/.zshrc
link ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
