#!/bin/bash

cd $(dirname $0)
is_ok() {
    read -p "${1:?} [y/N]? " _is_ok
    [[ "$_is_ok" == "y" ]]
}
[[ "$(readlink ~/.bashrc)" == "$PWD/.bashrc" ]] || (is_ok "Replace bashrc" && ln -s $PWD/.bashrc ~/.bashrc)
[[ "$(readlink ~/.bash_profile)" == "$PWD/.bashrc" ]] || (is_ok "Replace .bash_profile" && rm -f ~/.bash_profile && ln -s $PWD/.bashrc ~/.bash_profile)
[[ "$(readlink ~/.vimrc)" == "$PWD/.vimrc" ]] || (is_ok "Replace .vimrc" && rm -f ~/.vimrc && ln -s $PWD/.vimrc ~/.vimrc)
[[ "$(readlink ~/.vim/autoload)" == "$PWD/.vim/autoload" ]] || (is_ok "Replace .vim/autoload" && rm -f ~/.vim/autoload && ln -s $PWD/.vim/autoload ~/.vim/autoload)
[[ "$(readlink ~/.vim/bundle)" == "$PWD/.vim/bundle" ]] || (is_ok "Replace .vim/bundle" && rm -f ~/.vim/bundle && ln -s $PWD/.vim/bundle ~/.vim/bundle)
[[ "$(command -v brew)" != "" ]] || (is_ok "Install homebrew" && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)")
