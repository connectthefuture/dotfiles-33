echo "Install script: git"

if test ! $(which git)
then
    if test "$(uname)" = "Darwin"
    then
        brew install git
    elif test $(which apt-get)
    then
        sudo apt-get install git
    fi
fi
