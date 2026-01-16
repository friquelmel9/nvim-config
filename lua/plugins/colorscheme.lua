-- colorscheme.lua: Selects the color scheme
-- To change the color scheme, quit the comment of the return package

--[[ Monochrome.nvim: Monochrome setting
return {
    "kdheepak/monochrome.nvim",
    priority = 1000,
}
]]

-- Neomodern.nvim: Purple themne
return {
  "cdmill/neomodern.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("neomodern").setup({
      -- optional configuration here
    })
    require("neomodern").load()
  end,
}
