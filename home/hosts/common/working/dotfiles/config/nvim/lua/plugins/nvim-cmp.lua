return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
		},
		-- "saadparwaiz1/cmp-luasnip",
		-- "rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},
	config = function()
		local cmp = require("cmp")
		-- local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		-- require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = { completeopt = "menu,menuone,preview,noselect" },
			-- snippet = {
			--   expand = function ()
			--     luasnip.lsp_expand(args.body)
			--   end,
			---},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
			sources = cmp.config.sources({
				-- { name = "luasnip" },
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			formatting = {
				format = lspkind.cmp_format({
					naxwidth = 50,
					elipsis_char = "...",
				}),
			},
		})
	end,
}
