-- Setup lspconfig.
---------------------------------------

local nvim_lsp = require'lspconfig'

-- HTML
nvim_lsp.html.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- Typescript
nvim_lsp.tsserver.setup{}

-- Rescript
nvim_lsp.rescriptls.setup{
  cmd = {
    'node',
    '/Volumes/MacData/pierremu/.local/share/nvim/site/pack/packer/start/vim-rescript/server/out/server.js',
    '--stdio'
  },
  filetypes = { "rescript" },
}

-- GraphQl
nvim_lsp.graphql.setup{}

local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- lspkind
---------------------------------------
require('lspkind').init({
    -- enables text annotations
    --
    -- default: true
    with_text = true,

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})

