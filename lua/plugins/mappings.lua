return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          -- ["<Leader>r"] = { "<cmd>AstroReload<cr>", desc = "Reload window" },
          -- toggle term
          -- https://github.dev/AstroNvim/AstroNvim > lua > astronvim > plugins > toggleterm.lua
          ["<C-'>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },
          ["<Leader>td"] = {
            function()
              require("astrocore").toggle_term_cmd { cmd = "lazydocker", direction = "float", desc = "Toggle Lazydocker" }
            end,
          },
          ["<Leader>fl"] = {
            function() require("telescope").extensions.live_grep_args.live_grep_args() end,
            desc = "Live grep args",
          },

          -- Copilot chat
          ["<Leader>ao"] = { "<Cmd>lua require('CopilotChat').open()<CR>", desc = "open copilot chat" },
          ["<Leader>at"] = { "<Cmd>lua require('CopilotChat').toggle()<CR>", desc = "toggle copilot chat" },
          ["<Leader>ac"] = { "<Cmd>lua require('CopilotChat').close()<CR>", desc = "stop copilot chat" },

          -- move buffer
          ["H"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end },
          ["L"] = { function() require("astrocore.buffer").nav(vim.v.count1) end },

          ["<Leader>rk"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
          ["<Leader>rj"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
          ["<Leader>rh"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
          ["<Leader>rl"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },
        },
        t = {
          -- toggle term
          ["<C-'>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },
          ["<C-q>"] = { "<C-\\><C-n>", desc = "escape when in terminal" },
        },
        i = {
          -- toggle term
          ["<C-'>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },
          ["<C-e>"] = { "<End>" },
          ["<C-a>"] = { "<Home>" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
