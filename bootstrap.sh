#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

# get latest version
#git pull origin master;

function doIt() {
  echo "Sync dotfiles to $HOME"
  rsync --exclude ".git/" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE.txt" \
		-avh --no-perms . $HOME;
  source $HOME/.bash_profile;
}

# parameter -force/-f will override without prompt
if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;
