-- Add this to your plugins.lua file or where you keep your plugin configurations
return {
  {
    "ctrlpvim/ctrlp.vim",
    cmd = "CtrlP",
    config = function()
      -- Optional: Add any CtrlP-specific configurations here
      vim.g.ctrlp_map = '<c-p>'
      vim.g.ctrlp_cmd = 'CtrlP'
      vim.g.ctrlp_working_path_mode = 'ra'
      
      -- Ignore certain files and directories
      vim.g.ctrlp_custom_ignore = {
        dir = '\\v[/]\\.(git|hg|svn)$',
        file = '\\v\\.(exe|so|dll)$',
      }
      
      -- Use a custom file listing command
      if vim.fn.executable('rg') == 1 then
        vim.g.ctrlp_user_command = 'rg %s --files --color=never --glob ""'
      end
    end,
  },
}
