-- Setting the leader key:
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Some vim options:
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.nu = true
vim.opt.tabstop = 4        
vim.opt.shiftwidth = 4     
vim.opt.softtabstop = 4 
vim.opt.expandtab = true   

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Lazy.nvim plugin:
require("config.lazy")

-- Telescope plugin bindings: 
vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end)

vim.keymap.set("n", "<leader>gs", function()
	require("telescope.builtin").grep_string()
end)

vim.keymap.set("n", "<leader>lg", function()
	require("telescope.builtin").live_grep()
end)

-- nvim-tree bindings:
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"
    api.config.mappings.default_on_attach(bufnr)

    local function opts(desc)
        return { desc = "nvim-tree" .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Custom mappings:
    vim.keymap.set("n", "<BS>", api.tree.change_root_to_parent, opts("Up"))
    vim.keymap.set("n", "o", function()
        local node = api.tree.get_node_under_cursor()
        if node and node.type == "directory" then
            api.tree.change_root_to_node(node)
        else
            api.node.open.edit()
        end
    end, opts("Open or Root into directory."))

    vim.keymap.set("n", "n", api.fs.create, opts("Create"))
end

require("nvim-tree").setup({ 
    on_attach = my_on_attach
})
