local nvim_lsp = require'lspconfig'
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- disable tsserver formatting
  client.resolved_capabilities.document_formatting = false

  vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")

  -- Mappings.
  local map = vim.api.nvim_buf_set_keymap
  map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
  map(0, "n", "<leader>ca", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
  map(0, "x", "<leader>ca", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
  map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
  map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
  map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
  map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
  map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", {silent = true, noremap = true})
  map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", {silent = true, noremap = true})
  map(0, "n", "gh", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", {silent = true, noremap = true})
  map(0, "n", "gs", "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", {silent = true, noremap = true})
end

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
      on_attach = on_attach,
      cmd = {
        'node',
        '/home/pierremu/.local/share/nvim/site/pack/packer/start/vim-rescript/server/out/server.js',
        '--stdio'
      },
      filetypes = { "rescript" },
    }
  else
    nvim_lsp[server].setup {
      capabilities = capabilities,
      on_attach = on_attach,
    }
  end
end
