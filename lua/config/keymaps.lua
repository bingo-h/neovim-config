vim.g.mapleader = " "
vim.g.maplocalleader = ","

local mode_nv = {"n", "v"}
local mappings = {
	-- Movement
	{from = "u", to = "k", mode = mode_nv},  -- Up
	{from = "e", to = "j", mode = mode_nv},  -- Down
	{from = "n", to = "h", mode = mode_nv},  -- Left
	{from = "i", to = "l", mode = mode_nv},  -- Right
    {from = "I", to = "$", mode = mode_nv},  -- To the end of line
    {from = "N", to = "0", mode = mode_nv},  -- To the begin of line
    {from = "h", to = "e", mode = mode_nv},  -- To the end of word
    {from = "H", to = "E", mode = mode_nv},

    -- Scroll
    {from = "U", to = "H", mode = mode_nv},
    {from = "E", to = "L", mode = mode_nv},

    -- Insert mode
    {from = "k", to = "i", mode = mode_nv},  -- insert mode
    {from = "K", to = "I", mode = mode_nv},  -- insert at the end mode

    -- Change
    {from = "cu", to = "ck"},
    {from = "ce", to = "cj"},
    {from = "cn", to = "ch"},
    {from = "ci", to = "cl"},
    {from = "ck", to = "ci"},
    {from = "ch", to = "ce"},

    -- Yank
    {from = "yu", to = "yk"},
    {from = "ye", to = "yj"},
    {from = "yn", to = "yh"},
    {from = "yi", to = "yl"},
    {from = "yh", to = "ye"},

    -- Search the next or previous one
    {from = "`", to = "n", mode = mode_nv},
    {from = "<C-`>", to = "N", mode = mode_nv},

    -- Undo & Redo
    {from = "l", to = "u"},  -- Undo
    {from = "L", to = "U"},  -- Undo all the changes

    -- Nvimtree
}

for _, mapping in ipairs(mappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, {noremap = true})
end

