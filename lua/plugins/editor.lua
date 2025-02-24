return {
	--# Pairs
	{
		"echasnovski/mini.pairs",
		version = "*",
		event = "BufEnter",
		opts = {},
	},

	--# Rainbow delimiters
	{
		"hiphish/rainbow-delimiters.nvim",
		opts = {},
		config = function(_, opts)
			require("rainbow-delimiters.setup").setup(opts)

			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}
			local hooks = require("ibl.hooks")
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			end)

			vim.g.rainbow_delimiters = { highlight = highlight }
			require("ibl").setup({ scope = { highlight = highlight } })

			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
		end,
	},

	--# Icons
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	-- {
	-- 	"echasnovski/mini.icons",
	-- 	init = function()
	-- 		package.preload["nvim-web-devicons"] = function()
	-- 			require("mini.icons").mock_nvim_web_devicons()
	-- 			return package.loaded["nvim-web-devicons"]
	-- 		end
	-- 	end,
	-- 	opts = {},
	-- },

	--# Statusline
	{
		"echasnovski/mini.statusline",
		dependencies = {
			-- { "echasnovski/mini.icons", opts = {} },
			{ "nvim-tree/nvim-web-devicons", opts = {} },
		},
		version = "*",
		opts = {},
	},

	--# Tabline
	{
		"echasnovski/mini.tabline",
		dependencies = {
			-- { "echasnovski/mini.icons", opts = {} },
			{ "nvim-tree/nvim-web-devicons", opts = {} },
		},
		version = "*",
		opts = {},
	},

	--# Surround
	{
		"echasnovski/mini.surround",
		version = "*",
		opts = {},
	},

	--# Cursorword
	{
		"echasnovski/mini.cursorword",
		version = "*",
		opts = {},
	},

	--# Indent lines
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},

	--# Markdown viewer
	{
		"OXY2DEV/markview.nvim",
		ft = { "markdown" },
	},
	-- {
	-- 	"MeanderingProgrammer/render-markdown.nvim",
	-- 	-- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
	-- 	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
	-- 	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
	-- 	---@module 'render-markdown'
	-- 	---@type render.md.UserConfig
	-- 	opts = {},
	-- },
}
