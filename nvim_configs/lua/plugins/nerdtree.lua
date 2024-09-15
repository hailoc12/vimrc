-- This goes in your init.lua or a separate plugin configuration file
return {
  {
    "preservim/nerdtree",
    cmd = {
      "NERDTree",
      "NERDTreeToggle",
      "NERDTreeFocus",
      "NERDTreeFind",
    },
    config = function()
      -- Optional: Add any NERDTree-specific configurations here
      vim.g.NERDTreeShowHidden = 1
    end,
  },
}
