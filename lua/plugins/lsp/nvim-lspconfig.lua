return {
    {
        "neovim/nvim-lspconfig",
        event = {"BufReadPre", "BufNewFile"},
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },

        opts = {
            severs = {
                lua_ls = {},
                pyright = {},
                clangd = {}
            }
        },

        config = function(_, opts)
          for sever, config in pairs(opts.severs) do
              vim.lsp.enable(sever)
          end
        end,
    }
}
