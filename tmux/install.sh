echo "Install script: tmux"

if test ! $(which tmux)
then

    if test "$(uname)" = "Darwin"
    then
        brew install tmux
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
    then
        sudo dnf install tmux
    fi
fi
