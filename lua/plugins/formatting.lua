local supported = {
	"lua",
	"html",
	"css",
	"javascript",
	"javascriptreact",
	"typescript",
	"typescriptreact",
	"markdown",
	"json",
	"jsonc",
	"yaml",
}

return {
	"stevearc/conform.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	event = { "BufWritePre" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			html = { "prettierd" },
			css = { "prettierd" },
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			markdown = { "prettierd" },
			json = { "prettierd" },
			jsonc = { "prettierd" },
			yaml = { "prettierd" },
		},
		format_on_save = {
			async = false,
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
