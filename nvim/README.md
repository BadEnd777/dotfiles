# Neovim (nvim) Configuration

This folder contains my Neovim (nvim) configuration files and settings to enhance your code editing experience. Neovim is a highly customizable text editor designed for efficient code and text editing.

## Special Instructions

### Using Lazy.nvim as the Plugin Manager

My Neovim configuration uses `lazy.nvim` as the plugin manager. Make sure to install it by following the instructions provided in the `lazy.nvim` documentation.

### Configuring Python3 Path

In the `lua/base-configs.lua` file, you'll find the following line:

```lua
vim.g.python3_host_prog = 'path/to/python3'
```

You need to replace `'path/to/python3'` with the actual path to your Python3 executable. This configuration is essential for various Neovim plugins and features that rely on Python3.

## Key Mapping

My Neovim configuration includes custom key mappings defined in the `lua/keymaps.lua` file. You can find the list of all the key mappings in the file itself. Here's a quick overview of the key mappings:


| Key Mapping | Description |
| ----------- | ----------- |
| `<C-w>` | Navigate to the next window |
| `<C-p>` | Use Telescope to find files |
| `<C-e>` | Focus on the NvimTree (file explorer) |
| `<F2>` | Rename a file or directory in the NvimTree |
| `<C-n>` | Create a new file or directory in the NvimTree |
| `<Del>` | Remove a file or directory in the NvimTree |
| `<C-t>` | Toggle the terminal |
| `<C-t>` (in terminal mode) | Toggle the terminal |
| `<C-c>` | Copy text to the system clipboard |
| `<C-x>` | Cut text to the system clipboard |
| `<C-y>` | Paste text from the system clipboard |
| `<C-z>` | Undo |
| `<C-a>` | Select the entire document |
| `<C-End>` | Move to the end of the document |
| `<C-Home>` | Move to the beginning of the document |
| `<C-Right>` | Move to the next word |
| `<C-S-Right>` | Select the next word |
| `<C-Left>` | Move to the previous word |
| `<C-S-Left>` | Select the previous word |

## Getting Started

To get started with my Neovim configuration, you need to follow these steps:

1. Clone this repository to your preferred location on your computer:
    
```bash
git clone https://github.com/BadEnd777/dotfiles.git
```

2. Navigate to the "dotfiles/nvim" directory:

```bash
cd dotfiles/nvim
```

3. Customize your Neovim configuration by editing the configuration files, including `lua/base-configs.lua` for base configurations and `lua/keymaps.lua` for key mappings.
4. Ensure that you have Neovim and `lazy.nvim` installed on your system.
5. Modify the Python3 path in `lua/base-configs.lua` as mentioned in the "Configuring Python3 Path" section.
6. Enjoy an enhanced Neovim editing experience with your custom configuration!

<hr>