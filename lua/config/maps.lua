--[[
-- A function to simplify keymaps
--
-- @param mode: Mode that the keymap is used
-- @param lhs: Key combination to use the mapping
-- @param rhs: True combination used in nvim
-- @param opts: Options for the keymap
--]]
local function keymap(mode, lhs, rhs, opts)
	local options = { silent = true }
	if opts then
		options = vim.tbl_deep_extend("force",options,opts)
	end
	vim.keymap.set(mode,lhs,rhs,options)
end

-- Keymaps Neotree.
keymap('n','<leader>e','<CMD>Neotree toggle<CR>') -- I don't know what this does.
keymap('n','<leader>r','<CMD>Neotree focus<CR>') -- Focus in the Neotree window
vim.keymap.set('n', '-', function() -- From the Neotree repository
    local reveal_file = vim.fn.expand('%:p')
    if (reveal_file == '') then
      reveal_file = vim.fn.getcwd()
    else
      local f = io.open(reveal_file, "r")
      if (f) then
        f.close(f)
      else
        reveal_file = vim.fn.getcwd()
      end
    end
    require('neo-tree.command').execute({
      action = "focus",          -- OPTIONAL, this is the default value
      source = "filesystem",     -- OPTIONAL, this is the default value
      position = "left",         -- OPTIONAL, this is the default value
      reveal_file = reveal_file, -- path to file or folder to reveal
      reveal_force_cwd = true,   -- change cwd without asking if needed
    })
    end,
    { desc = "Open neo-tree at current file or working directory" }
)

-- Keymaps Neogit
keymap('n','<leader>git','<CMD>Neogit<CR>', {desc = "Open Neogit UI" }) -- From Neogit repository

-- Window Management
keymap('n','<leader>o','<CMD>vsplit<CR>', {desc = "Split the window (vertical)"})
keymap('n','<leader>p','<CMD>split<CR>', {desc = "Split the window (horizontal)"})
keymap('n',"<C-h>","<C-w>h", {desc = "Move to a window left from current"})
keymap('n','<C-l>','<C-w>l', {desc = "Move to a window right from current"})
keymap('n','<C-k>','<C-w>k', {desc = "Move to a window top from current"})
keymap('n','<C-j>','<C-w>j', {desc = "Move to a window bottom from current"})

-- Movement Configurations
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { desc = "Visual Movement in Normal Mode for k",
	expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { desc = "Visual Movement in Normal Mode for j"
	expr = true, silent = true})



-- Vim diagnostic
vim.keymap.set('n','<leader>e', vim.diagnostic.open_float, {
	desc = 'show error floating'
})

