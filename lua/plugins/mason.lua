-- Mason.lua: For plugins. It includes various plugins for this

return{
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls", "stylua", "lua-language-server", -- Lua
			"rust_analyzer", -- Rust
			"clang", -- C
			"pylint","pyright", "black", "isort", -- Python
			"css-lsp", "tailwindcss-language-server", -- css
			"eslint-lsp", "eslint_d", -- javascript, typescript
			"json-lsp", -- json
			"ltex-ls", "ltex-ls-plus", -- Latex
			"html-lsp", -- html
			"prettier", -- misc
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
