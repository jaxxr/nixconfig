return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "project files (telescope)" })
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "recent files (telescope)" })
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "search files (telescope)" })
		vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<CR>", { desc = "buffers (telescope)" })
	end,
}
