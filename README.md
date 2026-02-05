# nvim-config

My personal configuration for Neovim. This README has the purpose of guiding myself in how I built this (In case I forget something).

## Requirements

- The terminal needs to have a [NerdFont](https://www.nerdfonts.com/).

## Explanation

### General Structure

The structure is modular. That means that each .lua file has a function. In ´init.lua´, it loads the next files in lua/config:
- ´config.lua´: Vim diagnostic configurations (EMPTY RN)
- ´lazy.lua´: Plugin managers using lazy.nvim. It loads all the plugins from lua/plugins.
- ´maps.lua´: Keymap settings
- ´options.lua´: Vim configurations, such as line or tabs

### Plugins

´lazy.lua´ loads all the plugins from the lua/plugins folder. Each plugin has it own .lua file. The next plugins are being used

- *autopairs*: It matches pairs of keywords, such as {} and ().
- *colorscheme*: It changes the current theme for nvim. (Current one: Bamboo)
- *mason*: Manager for LSP configurations
- *neogit*: Manager for git implementations
- *neotree*: Tree file manager
- *status-line*: A status line for coding. Display current mode, git branch, and others.
- *treesitter*: I actually don't recall using this one.

#### Mason and LSP

The Mason plugin is used for LSP (Language Server Protocol). In theory the LSP installed are in lazy-lock.json. Need to see later.

## TODO

- Mason and LSP configurations in REPO
    - ~~lsp ensure installed~~
    - Separate ensure installed with explanation of each lsp, formatter, etc.
- AI implementation (Like Claude)
- config.lua
