local tarm = require("toggleterm")

tarm.setup({
    direction = 'float',
    float_opts = {
        border = 'single',
        winblend = 20,
    },
    shell = 'pwsh',
    transparent = true,
})
