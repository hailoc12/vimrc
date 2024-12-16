return {
  {
    "aweis89/aider.nvim",
    dependencies = {
       -- required for core functionality
      "akinsho/toggleterm.nvim",

       -- for fuzzy file `/add`ing functionality ("ibhagwan/fzf-lua" supported as well)
      "nvim-telescope/telescope.nvim",

      -- Optional, but great for diff viewing and after_update_hook integration
      "sindrets/diffview.nvim",

      -- Optional but great option for viewing Aider output
      "j-hui/fidget.nvim",

      -- Only if you care about using the /editor command
      "willothy/flatten.nvim",
    },
    lazy = false,
    opts = {
      -- Auto trigger diffview after Aider's file changes
      after_update_hook = function()
        require("diffview").open({ "HEAD^" })
      end,
      -- Customize how Aider output is viewed
      notify = function(...)
        require("fidget").notify(...)
      end,
    },
    keys = {
      {
        "<C-x>",
        "<cmd>AiderToggle<CR>",
        desc = "Toggle Aider",
        mode = { "i", "t", "n" },
      },
      {
        "<leader>as",
        "<cmd>AiderSpawn<CR>",
        desc = "Toggle Aidper (default)",
      },
      {
        "<leader>au",
        "<cmd>AiderSend /undo<CR>",
        desc = "Aider undo",
      },
      {
        "<leader>ams",
        "<cmd>AiderSend /model sonnet<CR>",
        desc = "Switch to sonnet",
      },
      {
        "<leader>amh",
        "<cmd>AiderSend /model haiku<CR>",
        desc = "Switch to haiku",
      },
      {
        "<leader>al",
        "<cmd>AiderLoad<CR>",
        desc = "Add file to aider",
      },
      {
        "<leader>ad",
        "<cmd>AiderAsk<CR>",
        desc = "Ask with selection",
        mode = { "v", "n" },
      },
    },
  },
}
