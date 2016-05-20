echo "Install script: sublime text 3"

if test "$(uname)" = "Darwin"
then
    if ! [ -e "/Applications/Sublime Text.app" ]
    then
        brew install caskroom/cask/brew-cask
        brew tap caskroom/versions
        brew cask install sublime-text3
    fi
elif test $(which apt-get)
then
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
    sudo apt-get update
    sudo apt-get install sublime-text-installer
fi
