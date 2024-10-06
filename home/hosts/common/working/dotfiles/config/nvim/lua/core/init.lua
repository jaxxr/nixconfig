local mod = {}

function mod.setOpts(opts)
	for k, v in pairs(opts) do
		vim.opt[k] = v
	end
end

return mod
