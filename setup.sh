#!/bin/bash -e

# Work out the directory containing this script
readonly dir=$(cd $(dirname ${0}); pwd -P)

# If that directory is underneath $HOME then use relative symlinks
if [ "${dir#${HOME}}" != "${dir}" ]; then
	readonly -a base=(${dir#${HOME%/}/} "../${dir#${HOME%/}/}")
else
	readonly -a base=(${dir} ${dir})
fi

ln -sfv ${base[0]}/gitconfig ~/.gitconfig
ln -sfv ${base[0]}/rainbarf.conf ~/.rainbarf.conf
ln -sfv ${base[0]}/tmux.conf ~/.tmux.conf
ln -sfv ${base[0]}/vimrc ~/.vimrc
