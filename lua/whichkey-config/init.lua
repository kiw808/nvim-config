local wk = require("which-key")

local mappings = {
  x = {':bdelete<CR>', 'Close buffer'},
  f = {':Telescope find_files<CR>', 'Telescope find files'},
  r = {':Telescope live_grep<CR>', 'Telescope live grep'},
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
    D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"}
  },
  R = {
    name = "Rescript",
    f = {":RescriptFormat<CR>", "Format current file"},
  },
}
local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
