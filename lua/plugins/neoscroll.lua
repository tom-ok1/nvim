return {
  "karb94/neoscroll.nvim",
  config = function()
    local neoscroll = require "neoscroll"
    neoscroll.setup()
    local function execute_default_command(key)
      local feedkeys = vim.api.nvim_replace_termcodes(key, true, false, true)
      vim.api.nvim_feedkeys(feedkeys, "n", false)
    end
    local keymap = {
      ["<C-u>"] = function() execute_default_command "<C-u>" end,
      ["<C-d>"] = function() execute_default_command "<C-d>" end,
      ["<C-b>"] = function() execute_default_command "<C-b>" end,
      ["<C-f>"] = function() execute_default_command "<C-f>" end,
      ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor = false, duration = 50 }) end,
      ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor = false, duration = 50 }) end,
      ["zt"] = function() neoscroll.zt { half_win_duration = 50 } end,
      ["zz"] = function() neoscroll.zz { half_win_duration = 50 } end,
      ["zb"] = function() neoscroll.zb { half_win_duration = 50 } end,
    }
    local modes = { "n", "v", "x" }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end,
}
