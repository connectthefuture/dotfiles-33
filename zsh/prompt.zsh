# Pure prompt
# https://github.com/sindresorhus/pure

# If symlink does not exist, create it
DOTFILES=$HOME/.dotfiles
pure=$DOTFILES/zsh/zfunctions/prompt/prompt_pure_setup
if [ ! -e "$pure" ]
then
    echo "Creating prompt_pure_setup symlink"
    mkdir -p $DOTFILES/zsh/zfunctions/prompt
    ln -s $DOTFILES/modules/pure/pure.zsh $DOTFILES/zsh/zfunctions/prompt/prompt_pure_setup
fi

# If symlink does not exist, create it
async=$DOTFILES/zsh/zfunctions/prompt/async
if [ ! -e "$async" ]
then
    echo "Creating async symlink"
    mkdir -p $DOTFILES/zsh/zfunctions/prompt
    ln -s $DOTFILES/modules/pure/async.zsh $DOTFILES/zsh/zfunctions/prompt/async
fi

# Add zfunctions to fpath
fpath=( "$DOTFILES/zsh/zfunctions/prompt" $fpath )

# Load
autoload -U promptinit && promptinit
prompt pure
