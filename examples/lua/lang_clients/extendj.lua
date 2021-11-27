---- Extendj-lsp client configuration ----

-- Code to access java
local util = require 'lspconfig.util'
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

-- Setup function. Should behave similar to how other language servers are activated
local M = {}
function M.setup(on_attach)
	local cmd = {get_java_executable(), '-jar', '/PATH/TO/lsp.jar', '--stdio'}
	local config = {
		on_attach = on_attach,
		cmd = cmd
	}
	require('extendj-lsp').setup(config)
end

return M
