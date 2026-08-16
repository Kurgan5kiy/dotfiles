return {
	{
		"raddari/last-color.nvim",
		version = "*",
		config = function()
			local theme = require("last-color").recall()

			-- The built-in "default" scheme may leave GUI highlight groups empty
			-- with termguicolors, making valid syntax appear unhighlighted.
			if not theme or theme == "default" then
				theme = "catppuccin"
			end

			local ok = pcall(vim.cmd.colorscheme, theme)
			if not ok then
				vim.cmd.colorscheme("catppuccin")
			end
		end,
	},

	require("plugins.colorscheme.schemes.vscode"),
	require("plugins.colorscheme.schemes.rose_pine"),
	require("plugins.colorscheme.schemes.catppuccin"),
	require("plugins.colorscheme.schemes.gruvbox"),
	require("plugins.colorscheme.schemes.kanagawa"),
	require("plugins.colorscheme.schemes.tokyonight"),
	require("plugins.colorscheme.schemes.everforest"),
	require("plugins.colorscheme.schemes.dracula"),
	require("plugins.colorscheme.schemes.solarized_osaka"),
	require("plugins.colorscheme.schemes.cyberdream"),
}
