# dotfiles

**tldr;** Based on the dotfiles of [Zach Holman](https://github.com/holman/dotfiles/fork) and [Nick Nisi](https://github.com/nicknisi/dotfiles).

### Compability

I'm currently using these dotfiles like this:

* OS X (El Capitan) with iTerm2 and ZSH


### Features based on Nick Nisi's dotfiles

- Git submodules, here stored in `$DOTFILES/modules`
- [Pure prompt](https://github.com/sindresorhus/pure)
- Set the `CODE_DIR` variable, pointing to the location where the code projects exist for exclusive autocompletion with the `c` command.

### Features from Zack Holman's dotfiles

- Added `$DOTFILES/bin` to path.
- Source `~/.localrc` if it exists so that additional configurations can be made that won't be kept track of in this dotfiles repo.

##### Topical features

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

Please note, changes have been made from Zack's original setup:

- a Brewfile is not used, in favor for `install.sh` scripts which can include `brew` commands.
- \*.zsh files are not loaded if placed in topic sub-folder, which makes it possible to store submodules (containing \*.zfs files) within the dotfiles without resulting in errors.

### Other features

- [Syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### Installation

On OS X, first install [iTerm2](https://www.iterm2.com).

```bash
git clone https://github.com/fredrikaverpil/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
```

Close and re-open the shell or run `zsh`. From then on you'll be able to reload the shell via the `reload!` alias.

Set the "Regular Font" typeface in iTerm2 to the Hack typeface which is downloaded into `~/.dotfiles/modules/Hack`.
