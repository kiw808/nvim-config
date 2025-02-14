# Neovim config

Here is my beginning of 2025 Neovim config. It's mainly aimed at Node/Typescript fullstack web development but can be easily extended.

Hoping it will be useful :)

## Requirements

- [Neovim >= v0.10.\*](https://github.com/neovim/neovim)
- rg (cli)
- fd (cli)

## Plugins (manager: [lazy.nvim](https://github.com/folke/lazy.nvim))

### LSP

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)

### Completion

- [blink.cmp](https://github.com/saghen/blink.cmp)

### Linting & formatting

- [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [conform.nvim](https://github.com/stevearc/conform.nvim)

### Navigation

- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)

### Database

- [vim-dadbod](https://github.com/tpope/vim-dadbod)
- [vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui)
- [vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion)

### Git

- [vim-fugitive](https://github.com/folke/lazy.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

### Quality of life stuff

- [mini.pairs](https://github.com/echasnovski/mini.pairs)
- [mini.surround](https://github.com/echasnovski/mini.surround)
- [mini.statusline](https://github.com/echasnovski/mini.statusline)
- [mini.tabline](https://github.com/echasnovski/mini.tabline)
- [mini.cursorword](https://github.com/echasnovski/mini.cursorword)
- [rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

### Icons

- [mini.icons](https://github.com/echasnovski/mini.icons)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)

### Extras

- Markdown viewer [markview.nvim](https://github.com/OXY2DEV/markview.nvim)
- Kitty Terminal config syntax [vim-kitty](https://github.com/fladson/vim-kitty)

## Custom keymaps

> ! Possibly not exaustive

| Keys         | Description          |
| ------------ | -------------------- |
| `<leader>ff` | Telescope find files |
| `<leader>fg` | Telescope ripgrep    |
