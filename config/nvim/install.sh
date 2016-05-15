echo "Install script: nvim"

if test ! $(which nvim)
then
    if test "$(uname)" = "Darwin"
    then
        brew install neovim/neovim/neovim
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
    then
        # Fedora
        sudo dnf -y install dnf-plugins-core
        sudo dnf -y copr enable dperson/neovim
        sudo dnf -y install neovim
    fi
fi

# Install
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
