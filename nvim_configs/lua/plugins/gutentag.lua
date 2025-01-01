-- Add this to your plugins.lua file or where you keep your plugin configurations

return {
  {
    "ludovicchabant/vim-gutentags",
    config = function()
      -- Gutentags configuration
      vim.g.gutentags_generate_on_new = 0
      vim.g.gutentags_generate_on_write = 0
      vim.g.gutentags_generate_on_empty_buffer = 0
      vim.g.gutentags_ctags_extra_args = {'--tag-relative=yes', '--fields=+ailmnS'}
    end,
  },
  {
    "preservim/tagbar",
    cmd = "TagbarToggle",
    keys = {
      { "<F8>", "<cmd>TagbarToggle<CR>", desc = "Toggle Tagbar" },
    },
  },
}
