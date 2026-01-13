-- Keymapings

-- Neotree
vim.keymap.set('n','<leader>e','<CMD>Neotree toggle<CR>', {silent = true})
vim.keymap.set('n','<leader>r','<CMD>Neotree focus<CR>', {silent = true})

vim.keymap.set('n', '-', function()
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

-- New windows
vim.keymap.set('n','<leader>o','<CMD>vsplit<CR>') -- New Window on the right (Vertical)
vim.keymap.set('n','<leader>p','<CMD>split<CR>') -- Split the window

-- Window Navigation
vim.keymap.set('n','<C-h>','<C-w>h') -- Move to a window in the left
vim.keymap.set('n','<C-l>','<C-w>l') -- Move to a window in the right
vim.keymap.set('n','<C-k>','<C-w>k') -- Move to a window above
vim.keymap.set('n','<C-j>','<C-w>j') -- Move to a window below
