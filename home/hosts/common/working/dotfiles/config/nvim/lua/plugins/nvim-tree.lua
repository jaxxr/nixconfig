local on_attach = function(bufnr)
	local api = require("nvim-tree.api")
	api.config.mappings.default_on_attach(bufnr)
	vim.keymap.set("n", "l", api.node.open.edit, { buffer = bufnr, desc = "open node" })
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nt = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nt.setup({
			on_attach = on_attach,
			view = {
				width = 35,
				relativenumber = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		vim.keymap.set("n", "<leader>ft", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "toggle file explorer" })
	end,
}
