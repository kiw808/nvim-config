return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "*",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },
		appearance = {
			nerd_font_variant = "mono",
		},
		signature = { enabled = true },
		-- completion = {
		-- 	menu = {
		-- 		draw = {
		-- 			components = {
		-- 				kind_icon = {
		-- 					ellipsis = false,
		-- 					text = function(ctx)
		-- 						local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
		-- 						return kind_icon
		-- 					end,
		-- 					-- Optionally, you may also use the highlights from mini.icons
		-- 					highlight = function(ctx)
		-- 						local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
		-- 						return hl
		-- 					end,
		-- 				},
		-- 			},
		-- 		},
		-- 	},
		-- },
	},
}
