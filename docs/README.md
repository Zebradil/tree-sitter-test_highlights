# Test Highlights grammar for Tree-Sitter

This repository provides a Test Highlights grammar for [tree-sitter](https://tree-sitter.github.io/tree-sitter/) and a Neovim plugin for easy installation.

It is useful for visualizing all pre-defined highlight groups in Neovim.

<p align="center">
  <a href="test-hl.png" target="_blank"><img src="test-hl.png" alt="Test Highlights Screenshot" width="800" style="max-width: 100%;" /></a>
</p>

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "zebradil/tree-sitter-test_highlights",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = { "test_highlights" },
}
```

## Usage

After installing the plugin, you can open the [`all-groups.test_highlights`](./test/all-groups.test_highlights) file in Neovim to see all the highlight groups rendered with their respective styles.
