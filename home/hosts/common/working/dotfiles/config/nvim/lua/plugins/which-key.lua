local expandBuffers = function()
	local extras = require("which-key.extras")
	return extras.expand.buf()
end

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		preset = "modern",
		spec = {
			{ "<leader>b", group = "buffer", expand = expandBuffers },
			{ "<leader>f", group = "file" },
			{ "<leader>g", group = "git" },
			{ "<leader>w", group = "window" },
		},
	},
}
