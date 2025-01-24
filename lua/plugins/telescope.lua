return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or
	-- , branch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{ "<leader>ff", require("telescope.builtin").find_files, desc = "Telescope find files" },
		{ "<leader>fg", require("telescope.builtin").live_grep, desc = "Telescope live grep" },
		{ "<leader>fh", require("telescope.builtin").help_tags, desc = "Telescope help tags" },
		{ "<leader>b", require("telescope.builtin").buffers, desc = "Telescope buffers" },
		{ "<leader>fk", require("telescope.builtin").keymaps, desc = "Telescope keymaps" },
	},
	opts = {
		pickers = {
			find_files = {
				theme = "ivy",
				hidden = true,
			},
			buffers = {
				theme = "dropdown",
			},
			diagnostics = {
				bufnr = 0,
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
		require("telescope").load_extension("fzf")
	end,
}
