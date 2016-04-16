echo "Install script: atom"

if test ! $(which atom)
then
    if test "$(uname)" = "Darwin"
    then
        brew cask install atom
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
    then
        sudo dnf install dnf-plugins-core
        sudo dnf copr enable helber/atom
        sudo dnf update
        sudo dnf install atom
    fi
fi




# Generic
apm install minimap
apm install file-icons
apm install script
apm install terminal-plus
apm install linter

# Python
apm install linter-flake8
apm install linter-jsonlint
apm install pretty-json

# Saltstack
apm install language-salt
apm install atom-jinja2

# Docker
apm install language-docker
apm install linter-docker
