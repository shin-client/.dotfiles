return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {},
      cssls = {},
      tailwindcss = {},
      tsserver = {
        settings = {
          javascript = {
            format = { enable = false }, -- Vô hiệu hóa định dạng JS để dùng Prettier
          },
          typescript = {
            format = { enable = false },
          },
        },
      },
      jsonls = {},
    },
  },
}
