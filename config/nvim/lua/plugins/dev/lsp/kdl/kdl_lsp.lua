local lsp = require("utils.lsp")

-- kdl-lsp is currently not packaged by Mason. Enable it automatically when
-- it is installed by Cargo or the operating system package manager.
lsp.setup_if_executable({
	name = "kdl_lsp",
	executable = "kdl-lsp",
})
