return {
  -- Neovim keybinding cheatsheat. Open with :WhichKey command. Close with <Esc>. Full keybinds on github.
  -- Auto suggests continuations for commands that you start typing.
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = { }
}
