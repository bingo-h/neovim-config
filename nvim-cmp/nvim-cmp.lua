-- Extensions needed by nvim-cmp
require("neovim/nvim-lspconfig")
require("hrsh7th/cmp-nvim-lsp")
require("hrsh7th/cmp-buffer")
require("hrsh7th/cmp-path")
require("hrsh7th/cmp-cmdline")
require("hrsh7th/nvim-cmp")

-- Luasnip
require("L3MON4D3/LuaSnip")
require("saadparwaiz1/cmp_luasnip")

-- nvim-cmp
local cmp = require("cmp")
cmp.setup({
    -- Required - specify a snippet engine
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },

    sources = cmp.config.sources({
        {name = "nvim-lsp"},
        {name = "luasnip"},
    }, {
        {name = "path"},
        {name = "buffer"},
    })
})
