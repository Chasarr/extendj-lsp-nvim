# Extendj-lsp Neovim client

This is a client implementation of the Extendj-lsp language server for Neovim.

# Installation

To use this client with Neovim, you need to have [packer.nvim](https://github.com/wbthomason/packer.nvim) and [Extendj-lsp](https://bitbucket.org/edan70/lsp-charlie-jonathan/src/master/) installed. Please follow the install instructions on each of these repos before proceding with the installation.


To get a proper config up and running, we recommend starting with copying the already existing config in the [examples](examples) folder and placing it in `.config/nvim/`. In `lua/lang_clients/extendj.lua`, change the line

```lua
local cmd = {get_java_executable(), '-jar', '/PATH/TO/lsp.jar', '--stdio'}
```

to include the path of the lsp jar file instead of `'/PATH/TO/lsp.jar'`.

Now run `:PackerUpdate` command in Neovim to install the plugin. To see if it's working, open a Java file (within a gradle or a git project) and run the `:LspInfo` command to see if it's working.
