return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    
    config = function ()
        require("nvim-treesitter.configs").setup {
            auto_install = true,
	    sync_install = false,
            ensure_install = {
                "c",
                "python",
                "vim",
                "lua",
                "markdown",
                "html"
            },

            highlight = {
                enable = true,
                disable = {},  -- list of languages that aren't highlighted
		additional_vim_regex_highlighting = true
            },

            indent = {
                enable = true,
                disable = {}
            },
        }
    end,
}
