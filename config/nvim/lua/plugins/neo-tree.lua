return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    "MunifTanjim/nui.nvim"
  },
  config = function()
    vim.keymap.set('n', '<C-n>', '<Cmd>Neotree toggle<CR>', {desc = "Toggle Neotree"})
    -- vim.cmd.Neotree("toggle") -- Opens neotree whenever nvim is opened. Commented out because it disabled the alpha.nvim splash screen by immediately toggling neotree when nvim was opened.
  end
}

