-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	"ms-jpq/chadtree",
	{
		"serenevoid/kiwi.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			{
				name = "work",
				path = "/home/username/wiki_1",
			},
			{
				name = "personal",
				path = "/home/username/wiki_2",
			},
		},
		keys = {
			{ "<leader>ww", ':lua require("kiwi").open_wiki_index()<cr>', desc = "Open Wiki index" },
			{
				"<leader>wp",
				':lua require("kiwi").open_wiki_index("personal")<cr>',
				desc = "Open index of personal wiki",
			},
			{ "T", ':lua require("kiwi").todo.toggle()<cr>', desc = "Toggle Markdown Task" },
		},
		lazy = true,
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = true,
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			animation = true,
			insert_at_start = true,
		},
		version = "^1.0.0",
	},
	{
		"sontungexpt/stcursorword",
		event = "VeryLazy",
		config = true,
	},
	{
		"CWood-sdf/spaceport.nvim",
		opts = {},
		lazy = false,
	},
	"mateuszwieloch/automkdir.nvim",
	"rcarriga/nvim-notify",
	{
		"declancm/cinnamon.nvim",
		config = function()
			require("cinnamon").setup()
		end,
	},
}
