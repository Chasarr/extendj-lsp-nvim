--Plugins loaded with packer.nvim
return require('packer').startup(function()
	-- To avoid warning messages by using global use functions
	local use = require('packer').use
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	--lspconfig with some handy lsp tools
	use 'neovim/nvim-lspconfig'

	--extendj-lsp
	use 'Chasarr/extendj-lsp-nvim'
end)
