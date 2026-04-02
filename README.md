# Neovim Config

Personal [LazyVim](https://github.com/LazyVim/LazyVim)-based Neovim configuration.

## Setup

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

```bash
git clone https://github.com/revollter/lazy_cfg.git ~/.config/nvim
nvim  # plugins install automatically on first launch
```

## Sync feature

On every file save, the file is automatically synced to a configured remote destination via rsync.
Targets are machine-specific and not tracked in the repo.

```bash
cp ~/.config/nvim/lua/config/sync_targets.lua.dist ~/.config/nvim/lua/config/sync_targets.lua
# edit sync_targets.lua with your own paths
```

To disable sync without removing the targets file, set in `options.lua`:

```lua
vim.g.sync_enabled = false
```

Or toggle at runtime from within Neovim:

```vim
:lua vim.g.sync_enabled = false
:lua vim.g.sync_enabled = true
```
