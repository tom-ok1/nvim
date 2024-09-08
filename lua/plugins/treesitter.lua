-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "css",
      "dockerfile",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "python",
      "scss",
      "toml",
      "tsx",
      "typescript",
      "vim",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
