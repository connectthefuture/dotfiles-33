echo "Install script: git"

if test ! $(which git)
then
    brew install git
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
    sudo dnf install git
fi
