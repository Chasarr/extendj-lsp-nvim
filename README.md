# Extendj-lsp Neovim client

This is a client implementation of the Extendj-lsp language server for Neovim.

# Installation

To use this client with Neovim, you need to have [packer.nvim](https://github.com/wbthomason/packer.nvim) and [Extendj-lsp](https://bitbucket.org/edan70/lsp-charlie-jonathan/src/master/) installed.


To get a proper config up and running, we recommend starting with copying the already existing config in the [examples](examples) folder and placing it in `.config/nvim/`. In `lua/lang_clients/extendj.lua`, change the line

```lua
local cmd = {get_java_executable(), '-jar', '/PATH/TO/lsp.jar', '--stdio'}
```

to include the path of the lsp jar file instead of `'/PATH/TO/lsp.jar'`.

Now run `:PackerUpdate` command in Neovim to install the plugin. To see if it's working, open a Java file (within a gradle project) and type `:lua start_extendj()` to start the language server. To see if it's working, run `:LspInfo`.

# Advanced installation

This section is for the more person who already has a working lsp config.

With packer, include Extendj-lsp with

```lua
use 'Chasarr/extendj-lsp-nvim'
```

To implement a client config, call `require('extendj-lsp').setup(config)` contains the path to lsp.jar in `cmd` as well as a `on_attach` callback function.

```lua
config = {
	cmd = {get_java_executable(), '-jar', '/PATH/TO/lsp.jar', '--stdio'},	--Contains the lsp.jar executable

	--on_attach on the right hand side contains a callback function which activates when the buffer starts. This usually contains LSP hotkeys
	on_attach = on_attach
}
```
