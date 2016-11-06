# Base16 Shell
# https://github.com/chriskempson/base16-shell

# if [ -z "$THEME" ]; then
    export THEME="base16-solarized"
# fi
if [ -z "$BACKGROUND" ]; then
    export BACKGROUND="dark"
fi

BASE16_SHELL=""$DOTFILES"modules/base16-shell/scripts/$THEME-$BACKGROUND.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
source $BASE16_SHELL


# set the background color to light on "light"
function light() {
    export BACKGROUND="light" && reload!
}
# set the background color to dark on "dark"
function dark() {
    export BACKGROUND="dark" && reload!
}
