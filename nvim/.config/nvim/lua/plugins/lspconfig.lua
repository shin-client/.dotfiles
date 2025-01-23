return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },

  -- example calling setup directly for each LSP
  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local lspconfig = require("lspconfig")

    -- lspconfig["lua-ls"].setup({ capabilities = capabilities })
  end,
}
