return {
	-- Git signs
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		event = { "BufEnter" },
		config = function(_, opts)
			require("gitsigns").setup(opts)
		end,
		keys = {
			{ "<leader>bl", "<cmd>Gitsigns toggle_current_line_blame<cr>" },
		},
	},

	-- Fugitive
	{
		"tpope/vim-fugitive",
		cmd = { "Git" },
		keys = {
			{ "gst", "<cmd>Git<cr>" },
		},
	},
}
