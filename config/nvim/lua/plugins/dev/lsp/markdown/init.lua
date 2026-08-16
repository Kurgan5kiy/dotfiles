require("plugins.dev.lsp.markdown.marksman")
local which = require("utils.which")
local ok, lint = which:is_module_exists("lint")

if ok and which:is_exists("markdownlint") then
	lint.linters_by_ft = lint.linters_by_ft or {}
	lint.linters_by_ft.markdown = { "markdownlint" }

	local group = vim.api.nvim_create_augroup("MarkdownLint", { clear = true })
	vim.api.nvim_create_autocmd({ "BufReadPost", "InsertLeave", "BufWritePost" }, {
		group = group,
		pattern = { "*.md", "*.mdx" },
		callback = function()
			lint.try_lint()
		end,
	})
end
