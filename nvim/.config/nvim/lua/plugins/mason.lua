return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "emmet-ls",
      "eslint_d",
      "html-lsp",
      "htmlbeautifier",
      "htmlhint",
      "css-lsp",
      "json-lsp",
      "prettier",
      "eslint-lsp",
      "clang-format",
      "clangd",
    },
  },
}
