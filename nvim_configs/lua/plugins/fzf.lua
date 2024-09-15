-- Add this to your plugins.lua file or where you keep your plugin configurations

return {
  {
    'junegunn/fzf',
    build = function()
      vim.fn['fzf#install']()
    end
  },
  {
    'junegunn/fzf.vim',
    dependencies = { 'junegunn/fzf' },
    config = function()
      -- FZF configuration
      vim.g.fzf_layout = { window = { width = 0.9, height = 0.6 } }
      vim.env.FZF_DEFAULT_OPTS = '--layout=reverse'
      
      -- Use ripgrep if available
      if vim.fn.executable('rg') == 1 then
        vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
      end

      -- Key mappings
      vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>b', ':Buffers<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>h', ':History<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>r', ':Rg<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>t', ':Tags<CR>', { noremap = true, silent = true })

      -- Custom Lua function for Git files
      vim.api.nvim_exec([[
        function! s:find_git_root()
          return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
        endfunction
        command! ProjectFiles execute 'Files' s:find_git_root()
      ]], false)
      
      vim.api.nvim_set_keymap('n', '<leader>p', ':ProjectFiles<CR>', { noremap = true, silent = true })
    end,
  },
}
