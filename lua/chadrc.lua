-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

-- ---@type ChadrcConfig
-- local M = {}

-- M.base46 = {
-- 	theme = "catppuccin"
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
-- }
-- M.plugins = "plugins"

-- return M

local options = {

  base46 = {
    theme = "catppuccin", -- default theme
    hl_add = {},
    hl_override = {},
    integrations = {},
    changed_themes = {},
  },

  dap = {
    plugin = true,
    n = {
      ["<leader>db"] = {
        "<cmd> DapToggleBreakpoint <CR>",
        "Add breakpoint at line"
      },
      ["<leader>dus"] = {
        function ()
          local widgets = require('dap.ui.widgets');
          local sidebar = widgets.sidebar(widgets.scopes);
          sidebar.open();
        end,
        "Open debugging sidebar"
      }
    }
  },

  dap_go = {
    plugin = true,
    n = {
      ["<leader>dgt"] = {
        function()
          require('dap-go').debug_test()
        end,
        "Debug go test"
      },
      ["<leader>dgl"] = {
        function()
          require('dap-go').debug_last()
        end,
        "Debug last go test"
      }
    }
  },

  gopher = {
    plugin = true,
    n = {
      ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
        "Add json struct tags"
      },
      ["<leader>gsy"] = {
        "<cmd> GoTagAdd yaml <CR>",
        "Add yaml struct tags"
      }
    }
  },

}

local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", options, status and chadrc or {})
