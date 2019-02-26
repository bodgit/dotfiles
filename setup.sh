#!/bin/bash -e

# Work out the directory containing this script
readonly dir=$(cd $(dirname ${0}); pwd -P)

# If that directory is underneath $HOME then use relative symlinks
if [ "${dir#${HOME}}" != "${dir}" ]; then
	readonly -a base=(${dir#${HOME%/}/} "../${dir#${HOME%/}/}" "../../${dir#${HOME%/}/}")
else
	readonly -a base=(${dir} ${dir} ${dir})
fi

[ -d ~/.gnupg ] || mkdir -p ~/.gnupg
chmod go-rwx ~/.gnupg
ln -sfv ${base[1]}/gpg.conf ~/.gnupg/gpg.conf
ln -sfv ${base[0]}/gitconfig ~/.gitconfig
ln -sfv ${base[0]}/rainbarf.conf ~/.rainbarf.conf
ln -sfv ${base[0]}/tmux.conf ~/.tmux.conf
for d in ~/.vim/autoload ~/.vim/bundle ; do
  [ -d ${d} ] || mkdir -p ${d}
done
ln -sfv ${base[2]}/tabular ~/.vim/bundle
ln -sfv ${base[2]}/vim-airline ~/.vim/bundle
ln -sfv ${base[2]}/vim-airline-themes ~/.vim/bundle
ln -sfv ${base[2]}/vim-colors-solarized ~/.vim/bundle
ln -sfv ${base[2]}/vim-fugitive ~/.vim/bundle
ln -sfv ${base[2]}/vim-go ~/.vim/bundle
ln -sfv ${base[2]}/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload
ln -sfv ${base[2]}/vim-surround ~/.vim/bundle
ln -sfv ${base[0]}/vimrc ~/.vimrc
