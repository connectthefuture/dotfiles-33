if test $(which babun)
then
    if test "$(expr substr $(uname -s) 1 6)" = "CYGWIN"
    then
        echo "Windows/Babun environment detected, setting permissions..."
        # Fix insecure directories
        # Run 'compaudit' to verify
        chmod -R 755 $DOTFILES
        chmod -R 755 /usr/share/zhs
    fi
fi
