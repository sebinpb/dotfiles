return {
  --[[
  -- Parser generator and Incremental parsing Library.
  -- It enables highlighting based on what neovim understands our program means. This understanding comes from the parsing that Treesitter does.
  --]]--
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "go"},
      -- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}



