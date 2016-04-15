if test ! $(which tmux)
then

    if test "$(uname)" = "Darwin"
    then
        brew install tmux
    fi

fi
