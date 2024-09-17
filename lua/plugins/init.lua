return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "configs.null-ls"
    end,
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
