# http://bolyai.cs.elte.hu/zsh-manual/zsh_16.html
# http://zsh.sourceforge.net/Guide/zshguide02.html

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY # zsh sessions will append their history list to the history file, rather than overwrite it
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS # tidy up the line when it is entered into the history by removing any excess blanks that mean nothing to the shell
setopt NO_HIST_BEEP # shell won't beep when scrolled to top in editor
setopt HIST_VERIFY # after a substitution the line appears again with the changes, instead of being immediately printed and executed

setopt NO_BG_NICE # don't run background commands at lower priority
setopt NO_HUP # don't kill background commands when exiting shell
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt CORRECT # try to correct the spelling of commands
setopt IGNORE_EOF # do not exit on EOF
setopt COMPLETE_ALIASES #  aliases on the command line are not internally substituted before completion is attempted
