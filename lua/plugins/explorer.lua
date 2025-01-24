return {
	-- {
	--   "stevearc/oil.nvim",
	--   ---@module 'oil'
	--   ---@type oil.SetupOpts
	--   opts = {
	--     view_options = {
	--       show_hidden = true,
	--     },
	--   },
	--   -- Optional dependencies
	--   dependencies = { { "echasnovski/mini.icons", opts = {} } },
	--   -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	--   keys = {
	--     { "<leader>e", "<cmd>Oil<cr>", desc = "Oil" },
	--   },
	-- },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle reveal_force_cwd<cr>" },
		},
	},
}
