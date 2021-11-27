# Extendj-lsp Neovim client

This is a client implementation of the Extendj-lsp language server for Neovim.

# Installation

To use this client with Neovim, you need to have [packer.nvim](https://github.com/wbthomason/packer.nvim) and [Extendj-lsp](https://bitbucket.org/edan70/lsp-charlie-jonathan/src/master/) installed.


To get a proper config up and running, we recommend starting with copying the already existing config in the [examples](examples) folder and placing it in `.config/nvim/`. Change the line

```lua
local cmd = {get_java_executable(), '-jar', 'PATH/TO/lsp.jar', '--stdio'}
```

to include the path of the lsp jar file.

Now run `:PackerUpdate` command in Neovim to install the plugin. To see if it's working, open a Java file (within a gradle project) and type `:lua start_extendj()` to start the language server. To see if it's working, run `:LspInfo`.
