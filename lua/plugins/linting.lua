local linters_by_ft = {
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	javascriptreact = { "eslint_d" },
	typescriptreact = { "eslint_d" },
}

return {
	{
		"mfussenegger/nvim-lint",
		dependencies = {
			"williamboman/mason.nvim",
		},
		events = { "BufReadPost" },
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = linters_by_ft
		end,
	},
}
