# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a Neovim configuration using Lua, organized in a modular structure:

- `init.lua` - Main entry point that loads the thomas module
- `lua/thomas/` - Core configuration module containing:
  - `init.lua` - Loads plugins and remap configurations
  - `plugins.lua` - Plugin management using vim-plug
  - `remap.lua` - Key mappings and leader key configuration
- `after/plugin/` - Plugin-specific configurations loaded after plugins

## Key Configuration Details

- **Leader key**: Space character (set in `lua/thomas/remap.lua:1`)
- **Plugin manager**: vim-plug
- **Key plugins**: FZF for fuzzy finding, Bufferline for tab management

## Keybind Reference / Cheat Sheet

### File Navigation
- `<leader>pv` - Open file explorer (`:Ex`)
- `<C-p>` - FZF find files in project
- `<leader>ff` - FZF git files
- `<leader>ss` - FZF project search (ripgrep)
- `<leader>fb` - FZF buffer list

### Buffer Management (Bufferline)
- `<leader>tn` - New buffer/tab
- `<leader>tc` - Close current buffer
- `<C-w>` - Close current buffer (quick)
- `<C-Tab>` - Toggle between last used buffers
- `<C-S-Tab>` - Toggle between last used buffers
- `<leader>bp` - Pick buffer interactively
- `<leader>bc` - Pick buffer to close
- `<C-h>` - Previous buffer
- `<C-l>` - Next buffer
- `<leader>1-5` - Jump to buffer 1-5 directly

### Git Operations
- `<leader>gs` - Git status (interactive staging)
- `<leader>ga` - Git add all files
- `<leader>gc` - Git commit
- `<leader>gp` - Git push
- `<leader>gl` - Git pull
- `<leader>gd` - Git diff split view
- `<leader>gb` - Git blame

### Git Hunks (Gitsigns)
- `<leader>hs` - Stage hunk under cursor
- `<leader>hr` - Reset hunk under cursor
- `<leader>hS` - Stage entire buffer
- `<leader>hR` - Reset entire buffer
- `<leader>hp` - Preview hunk
- `<leader>hb` - Show blame line
- `<leader>tb` - Toggle current line blame
- `<leader>hd` - Diff this file
- `<leader>hD` - Diff this file against index
- `<leader>td` - Toggle deleted lines
- `]c` - Next hunk
- `[c` - Previous hunk
- `ih` - Select hunk (text object)

### Standard Vim Commands
- `<C-w>` + `hjkl` - Navigate between windows
- `:w` - Save file
- `:q` - Quit
- `:wq` - Save and quit
- `<C-o>` - Jump back in jump list
- `<C-i>` - Jump forward in jump list

## Common Commands

### Plugin Management
```bash
# Install/update plugins (run from within nvim)
:PlugInstall
:PlugUpdate
:PlugClean
```

### Testing Configuration
```bash
# Test the configuration
nvim
# Or test with a specific file
nvim /path/to/file
```

### Reloading Configuration
```bash
# Within nvim, reload configuration
:source ~/.config/nvim/init.lua
# Or restart nvim to fully reload
```

## Development Workflow

1. **Adding new plugins**: Edit `lua/thomas/plugins.lua` and add plugin specifications
2. **Adding keymaps**: Edit `lua/thomas/remap.lua` for global maps or create plugin-specific files in `after/plugin/`
3. **Plugin configuration**: Create new files in `after/plugin/` named after the plugin
4. **Testing changes**: Use `:source %` to reload current file or restart nvim

## File Structure Notes

- The configuration follows Neovim's standard Lua configuration pattern
- Plugin configurations in `after/plugin/` are automatically loaded after plugins are initialized
- The `thomas` namespace keeps personal configuration organized and prevents conflicts