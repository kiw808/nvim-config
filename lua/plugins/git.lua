return {
	-- Git signs
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		config = function(_, opts)
			require("gitsigns").setup(opts)
		end,
	},

	-- Fugitive
	{
		"tpope/vim-fugitive",
		keys = {
			{ "G", "<cmd>Git<cr>" },
		},
	},
}
