# ctrl-alt-vim

A fork of [vim-anywhere](https://github.com/cknadler/vim-anywhere/), a simple script that launches gvim and copies content to a terminal on write/exit.

If you want a better installer and non-GNOME support: use vim-anywhere.

If you want a simple, opinionated launcher: use this or fork yourself.

- Removes OS X support
- Removes installer
- Starts in INSERT mode
- Uses mktemp
- Deletes temp file after

## Installation

- Copy ctrl-alt-vim.sh to `$HOME/bin/` it already exists and in your path, right
- Run `shortcuts-gnome.sh` to install GNOME shortcuts.

## Usage

Use `ctrl-alt-v` to launch

Create `$HOME/.gvimrc.min` to customize for this instance:

To remove gvim menu and toolbar:

```vim
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
```


## Uninstall

- Run `shortcuts-gnome-remove.sh` to remove shortcuts set


## Credit

All credit to [Chris Knadler](https://github.com/cknadler) for the original vim-anywhere program this was forked from. 


## License

MIT.
