echo "Install script: tmux"

if test ! $(which tmux)
then
    if test "$(uname)" = "Darwin"
    then
        brew install tmux
    elif test $(which apt-get)
    then
        sudo apt-get install tmux
    fi
fi
