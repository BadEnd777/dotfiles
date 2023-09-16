local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    }
})
