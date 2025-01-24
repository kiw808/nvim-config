return {
	{
		"echasnovski/mini.pairs",
		version = "*",
		event = "BufEnter",
		opts = {},
	},
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
	{
		"echasnovski/mini.statusline",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		version = "*",
		opts = {},
	},
	{
		"echasnovski/mini.tabline",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		version = "*",
		opts = {},
	},
	{
		"echasnovski/mini.surround",
		version = "*",
		opts = {},
	},
	-- {
	--   "echasnovski/mini.indentscope",
	--   version = "*",
	--   opts = {
	--     animation = function()
	--       require("mini.indentscop").gen_animation.none()
	--     end,
	--     try_as_border = true,
	--   },
	-- },
	{
		"echasnovski/mini.cursorword",
		version = "*",
		opts = {},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"fladson/vim-kitty",
		ft = "kitty",
	},
}
