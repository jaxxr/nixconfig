local theme = function()
	local configuration = vim.fn["gruvbox_material#get_configuration"]()
	local palette = vim.fn["gruvbox_material#get_palette"](
		configuration.background,
		configuration.foreground,
		configuration.colors_override
	)

	return {
		normal = {
			a = { bg = palette.orange[1], fg = palette.bg0[1], gui = "bold" },
			b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
			c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
		},
		insert = {
			a = { bg = palette.bg_green[1], fg = palette.bg0[1], gui = "bold" },
			b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
			c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
		},
		visual = {
			a = { bg = palette.bg_red[1], fg = palette.bg0[1], gui = "bold" },
			b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
			c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
		},
		replace = {
			a = { bg = palette.bg_yellow[1], fg = palette.bg0[1], gui = "bold" },
			b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
			c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
		},
		command = {
			a = { bg = palette.blue[1], fg = palette.bg0[1], gui = "bold" },
			b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
			c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
		},
		terminal = {
			a = { bg = palette.purple[1], fg = palette.bg0[1], gui = "bold" },
			b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
			c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
		},
		inactive = {
			a = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] },
			b = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] },
			c = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] },
		},
	}
end

return {

	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		lualine.setup({
			options = {
				theme = theme(),
			},
			sections = {
				lualine_x = {
					{ lazy_status.updates, cond = lazy_status.has_updates },
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
