echo "Install script: atom"

if test ! $(which atom)
then
    if test "$(uname)" = "Darwin"
    then
        brew cask install atom
    elif test $(which apt-get)
    then
	sudo add-apt-repository ppa:webupd8team/atom
	sudo apt update
	sudo apt install -y atom
    fi

    # Install packages
    apm_install() {
        # Installs if it is not already installed
        if [[ ! -d "$HOME/.atom/packages/$1" ]]
        then
        apm install $1
        fi
        }

    # Generic
    apm_install minimap
    apm_install file-icons
    apm_install script
    apm_install terminal-plus
    apm_install linter

    # Python
    apm_install linter-flake8
    apm_install linter-jsonlint
    apm_install pretty-json

    # Saltstack
    apm_install language-salt
    apm_install atom-jinja2

    # Docker
    apm_install language-docker
    apm_install linter-docker
fi
