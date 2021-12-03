---- Extendj-lsp client configuration ----
local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')
local util = require 'lspconfig.util'

-- Code to access java
local sysname = vim.loop.os_uname().sysname
local env = {
	HOME = vim.loop.os_homedir(),
	JAVA_HOME = os.getenv 'JAVA_HOME',
	WORKSPACE = os.getenv 'WORKSPACE',
}
local function get_java_executable()
	local executable = env.JAVA_HOME and util.path.join(env.JAVA_HOME, 'bin', 'java') or 'java'

	return sysname:match 'Windows' and executable .. '.exe' or executable
end

-- extendj-lsp setup
local M = {}
function M.setup(on_attach)
	if not configs.extendj_lsp then
		configs.extendj_lsp= {
		default_config = {
			cmd = {get_java_executable(), '-jar', '/PATH/TO/lsp.jar', '--stdio'},
			root_dir = lspconfig.util.root_pattern('.git', '.gradle'),
			filetypes = { 'java' }
		},
	}
	end
	lspconfig.extendj_lsp.setup{on_attach = on_attach}
end
return M
