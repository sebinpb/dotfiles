return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = "Display Hover details"})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = "Show definition"})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {desc = "Show Code Actions"})
    end
  }
}

