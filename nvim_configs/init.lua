-- Add ~/.vim_runtime to the runtime path
vim.opt.runtimepath:append("~/.vim_runtime")

-- Source the main configuration files
vim.cmd('source ~/.vim_runtime/vimrcs/basic.vim')
vim.cmd('source ~/.vim_runtime/vimrcs/filetypes.vim')
vim.cmd('source ~/.vim_runtime/vimrcs/plugins_config.vim')
vim.cmd('source ~/.vim_runtime/vimrcs/extended.vim')

-- Try to source my_configs.vim if it exists
local my_configs = vim.fn.expand('~/.vim_runtime/my_configs.vim')
if vim.fn.filereadable(my_configs) == 1 then
    vim.cmd('source ' .. my_configs)
end

-- Add all subdirectories of ~/.vim_runtime/sources_non_forked to the runtime path
local function add_to_runtimepath(directory)
    local expanded_path = vim.fn.expand(directory)
    if vim.fn.isdirectory(expanded_path) == 1 then
        for _, dir in ipairs(vim.fn.globpath(expanded_path, '*', 0, 1)) do
            if vim.fn.isdirectory(dir) == 1 then
                vim.opt.runtimepath:append(dir)
            end
        end
    end
end

add_to_runtimepath('~/.vim_runtime/sources_non_forked')

-- Enable syntax highlighting and filetype plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

-- Any additional Neovim-specific configurations can go here

-- You can start adding your Lua-based configurations below this line
-- For example:
-- vim.opt.number = true  -- Show line numbers
-- vim.opt.expandtab = true  -- Use spaces instead of tabs
-- vim.opt.shiftwidth = 4  -- Size of an indent
-- vim.opt.softtabstop = 4  -- Number of spaces tabs count for in insert mode

-- Key mappings example:
-- vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Plugin configurations can also be added here if you decide to use a Lua-based plugin manager in the future
require("config.lazy")

-- set api key for avante
vim.env.ANTHROPIC_API_KEY = ""

