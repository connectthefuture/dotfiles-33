if test ! $(which tmux)
then

    if test "$(uname)" = "Darwin"
    then
        brew install tmux
    elif test "$(expr substr $(uname -s) 1 6)" = "CYGWIN"
    then
        pact install tmux
    fi

fi
