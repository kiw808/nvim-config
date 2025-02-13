local ensure_installed = {
	"lua_ls",
	"ts_ls",
	"jsonls",
	"yamlls",
}

return {
	-- Mason
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {},
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		cmd = { "LspInfo", "LspInstall", "LspStart" },
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
			{ "saghen/blink.cmp" },
		},
		config = function()
			-- local lsp_defaults = require("lspconfig").util.default_config

			-- LspAttach is where you enable features that only work
			-- if there is a language server active in the file
			vim.api.nvim_create_autocmd("LspAttach", {
				desc = "LSP actions",
				callback = function(event)
					local bufnr = event.buf

					local opts = { buffer = bufnr }

					-- Telescope
					local builtin = require("telescope.builtin")

					vim.keymap.set("n", "gd", builtin.lsp_definitions, opts)
					vim.keymap.set("n", "gr", builtin.lsp_references, opts)
					vim.keymap.set("n", "gi", builtin.lsp_implementations, opts)
					vim.keymap.set("n", "<leader>fd", builtin.diagnostics, opts)

					-- Diagnostics
					vim.keymap.set("n", "gk", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
					vim.keymap.set("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
					vim.keymap.set("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)

					vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
					-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
					vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
					-- vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
					vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
					-- vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
					vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
					vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
					vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
					vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
				end,
			})

			require("mason-lspconfig").setup({
				ensure_installed = ensure_installed,
				automatic_installation = false,
				handlers = {
					function(server_name)
						local capabilities = require("blink.cmp").get_lsp_capabilities()

						require("lspconfig")[server_name].setup({ capabilities = capabilities })
					end,
				},
			})
		end,
	},

	-- Kitty conf integration
	{
		"fladson/vim-kitty",
		ft = "kitty",
	},
}
