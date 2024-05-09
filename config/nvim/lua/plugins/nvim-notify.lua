return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    notify("Ready", "info", {
      title = "nvim-notify"
    })

    vim.notify = notify
  end
}
