#!/bin/bash

cd $(dirname $0)
is_ok() {
    read -p "${1:?} [y/N]?" _is_ok
    if [[ "$_is_ok" == "y" ]]
    then
        true
    else
        false
    fi
}
is_ok "Replace .bashrc" && rm -f ~/.bashrc && ln -s $PWD/.bashrc ~/.bashrc
is_ok "Replace .bash_profile" && rm -f ~/.bash_profile && ln -s $PWD/.bashrc ~/.bash_profile
is_ok "Replace .vimrc" && rm -f ~/.vimrc && ln -s $PWD/.vimrc ~/.vimrc
is_ok "Replace .vim/autoload" && rm -f ~/.vim/autoload && ln -s $PWD/.vim/autoload ~/.vim/autoload
is_ok "Replace .vim/bundle" && rm -f ~/.vim/bundle && ln -s $PWD/.vim/bundle ~/.vim/bundle
