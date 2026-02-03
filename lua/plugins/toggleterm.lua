-- ToggleTerm: Bottom Terminal Commands

return{
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 10,
			open_mapping = '<A-t>',
			hide_numbers = true,
			direction = 'horizontal',
			close_on_exit = true,
			auto_scroll = true,
			start_in_insert = true,
		})
	end
}
