echo "Install script: nvim"

if test ! $(which nvim)
then
    if test "$(uname)" = "Darwin"
    then
        brew install neovim/neovim/neovim
    elif test $(which apt-get)
    then
        # Ubuntu
        sudo apt-get install nvim
    fi

    # Install vim-plug
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
