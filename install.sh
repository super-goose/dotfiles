#!/bin/bash


create_symlinks() {
    # Get the directory in which this script lives.
    script_dir=$(dirname "$(readlink -f "$0")")

    # Get a list of all files in this directory that start with a dot.
    files=$(find -maxdepth 1 -type f -name ".*")

    # Create a symbolic link to each file in the home directory.
    for file in $files; do
        name=$(basename $file)
        echo "Creating symlink to $name in home directory."
        rm -rf ~/$name
        ln -s $script_dir/$name ~/$name
    done
}

create_symlinks

echo "Initializing conda for zsh."
conda init zsh

# echo "Installing fonts."
# FONT_DIR="$HOME/.fonts"
# git clone https://github.com/powerline/fonts.git $FONT_DIR --depth=1
# cd $FONT_DIR
# ./install.sh

# Personalizing Git
git config --global core.editor "nano"
export GIT_EDITOR="nano"

# :finger-quotes: History :finger-quotes:
# cat ./fakehistory >> $HISTFILE
# sudo cat ./fakehistory >> /root/.zsh_history

# yarn install (can't use aliases in install script)
cd /workspaces/main && git pull && yarn install
