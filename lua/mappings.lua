require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- golang relater
map("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add Json Tag" })
map("n", "<leader>gsy", "<cmd> GoTagAdd yaml <CR>", { desc = "Add Yaml Tag" })
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dus", function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end, { desc = "Open debugging sidebar" })
map("n", "<leader>dgt", function()
        require('dap-go').debug_test()
      end, { desc = "Debug go test" })


-- tab
map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
