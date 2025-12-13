-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").elixirls.setup({
  -- Unix
  cmd = { "elixir-ls" },
})
