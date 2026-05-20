-- Setting the leader key:
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Some vim options:
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.nu = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Lazy.nvim plugin:
require("config.lazy")

-- Telescope plugin bindings: 
vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end)

vim.keymap.set("n", "<leader>lg", function()
	require("telescope.builtin").live_grep()
end)

-- nvim-tree bindings:
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
