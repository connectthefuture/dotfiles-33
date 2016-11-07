echo "Install script: tree"

if test ! $(which tree)
then
    if test "$(uname)" = "Darwin"
    then
        brew install tree
    elif test $(which apt-get)
    then
        sudo apt-get install -y tree
    fi
fi
