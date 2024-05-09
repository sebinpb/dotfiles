return {
	{
		--[[
    --  Fuzzy finding for neovim. Uses ripgrep (which needs to be installed)
    --  This allows directory wide search, finding functionality, and also a preview for the
    --  finder screen. 
    --]]
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			--builtin.find_files({path_display = { "truncate" }})

			--- Options below, in the config for telescope-ui-select.nvim
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files with telescope" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep with telescope" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
				path_display = { "truncate" },
				--[[				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
						results_width = 0.8,
					},
					vertical = {
						mirror = false,
					},
					width = 0.87,
					height = 0.80,
					preview_cutoff = 120,
				},    ]]--
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
