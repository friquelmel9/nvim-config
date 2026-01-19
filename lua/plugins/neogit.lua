-- Neogit lua: An interface to use for git
-- Obtained from https://www.howtogeek.com/6-essential-plugins-to-get-the-most-out-of-neovim-in-2026/

return{
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		kind = "floating",
	},
	config = true
}
