# ctrl-alt-vim

A fork of [vim-anywhere](https://github.com/cknadler/vim-anywhere/), a simple script that launches gvim and copies content to a terminal on write/exit.

If you want a better installer and non-GNOME support: use vim-anywhere.

If you want a simple, opinionated launcher: use this or fork yourself.

- Removes OS X support
- Removes installer
- Starts in INSERT mode
- Uses mktemp
- Deletes temp file after
- Uses markdown file

## Installation

- Copy ctrl-alt-vim.sh to `$HOME/bin/`
- Run `shortcuts-gnome.sh` to install GNOME shortcuts.

## Usage

Use `ctrl-alt-v` to launch, type your thing, save-quit `:wq`

The copy to the clipboard only works if you save the file, if you `q!` nothing is copied.

## Customize

If `$HOME/.gvimrc.min` exists it will load on the command-line using, I've found that this does not work well for me. I don't use gvim for anything else, so I use a custom .gvimrc to configure, including in this repo.

You can also add options to your normal .vimrc and customize, for example to remove gvim menu and toolbar:

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
