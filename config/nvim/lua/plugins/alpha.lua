return {
	"goolord/alpha-nvim",
	config = function()
		require("alpha").setup(require("alpha.themes.startify").config)
    -- https://github.com/goolord/alpha-nvim/
    -- https://github.com/goolord/alpha-nvim/discussions/16
	end,
}
