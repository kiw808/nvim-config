--# Highlight on yank
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

--# Linting
vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
	callback = function()
		local lint = require("lint")

		lint.try_lint()
	end,
})

--# Terminal
vim.api.nvim_create_autocmd({ "TermOpen", "WinEnter" }, {
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	pattern = { "term://*" },
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
		vim.cmd.startinsert()
	end,
})
