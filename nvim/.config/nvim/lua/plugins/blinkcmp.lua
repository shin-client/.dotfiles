return {
  "saghen/blink.cmp",
  dependencies = {
    "onsails/lspkind.nvim",
    {
      "saghen/blink.compat",
      -- use the latest release, via version = '*', if you also use the latest release for blink.cmp
      version = "*",
      -- lazy.nvim will automatically load the plugin when it's required by blink.cmp
      lazy = true,
      -- make sure to set opts so that lazy.nvim calls blink.compat's setup
      opts = {},
    },
  },

  build = "cargo build --release",
  lazy = true,

  opts = {
    completion = {
      menu = {
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind", gap = 1 },
          },
          components = {
            kind_icon = {
              ellipsis = false,
              text = function(ctx)
                local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                local symbol = require("lspkind").symbolic(ctx.kind, {
                  mode = "symbol",
                  symbol_map = { Copilot = "", LazyDev = "" },
                })
                if ctx.kind == "Copilot" then
                  kind_icon = ""
                elseif ctx.kind == "LazyDev" then
                  kind_icon = ""
                end
                return kind_icon
              end,
            },
          },
        },
      },
      list = {
        selection = { preselect = true, auto_insert = false },
      },
    },

    keymap = {
      ["<cr>"] = { "select_and_accept", "fallback" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },

      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },

      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },

      cmdline = {
        ["<cr>"] = { "select_and_accept", "fallback" },

        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },

        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },

        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },

        ["<C-b>"] = { "scroll_documentation_up", "fallback" },
        ["<C-f>"] = { "scroll_documentation_down", "fallback" },
      },
    },

    sources = {
      default = { "lazydev", "path", "lsp", "buffer", "snippets", "copilot" },
      cmdline = {},

      providers = {
        Copilot = {
          name = "copilot",
          module = "blink-cmp-copilot",
          score_offset = 1,
        },
        LazyDev = {
          name = "lazydev",
          module = "lazydev.integrations.blink",
          score_offset = 2,
        },
      },
    },

    -- experimental signature help support
    signature = { enabled = true },
  },

  opts_extend = { "sources.default" },
}
