#!/bin/bash

# Work out the directory containing this script
dir=$(cd $(dirname ${0}); pwd -P)

# If that directory is underneath $HOME then use relative symlinks
if [ "${dir#${HOME}}" != "${dir}" ]; then
	base=${dir#${HOME%/}/}
else
	base=${dir}
fi

ln -sfv ${base}/tmux.conf ~/.tmux.conf
ln -sfv ${base}/vimrc ~/.vimrc
