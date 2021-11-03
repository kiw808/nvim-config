local nvim_lsp = require'lspconfig'
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


local langservers = {
  "html",
  "cssls",
  "tsserver",
  "graphql",
  "rescriptls",
  "diagnosticls",
}

for _, server in ipairs(langservers) do
  if server == "rescriptls" then
    nvim_lsp[server].setup {
      capabilities = capabilities,
      cmd = {
        'node',
        '/home/pierremu/.local/share/nvim/site/pack/packer/start/vim-rescript/server/out/server.js',
        '--stdio'
      },
      filetypes = { "rescript" },
    }
  else
    nvim_lsp[server].setup {
      capabilities = capabilities
    }
  end
end


