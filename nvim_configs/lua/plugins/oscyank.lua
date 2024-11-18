return {
 'ojroques/vim-oscyank',
 event = "VeryLazy",
 config = function()
   if vim.fn.has('mac') == 1 then
     vim.opt.clipboard = "unnamed"
   else 
     vim.opt.clipboard = "unnamedplus"
   end

   vim.keymap.set('n', '<leader>c', function()
     vim.cmd('normal! y')
     vim.fn.OSCYank(vim.fn.getreg('"'))
   end)
   vim.keymap.set('v', '<leader>c', function()
     vim.cmd('normal! y')
     vim.fn.OSCYank(vim.fn.getreg('"')) 
   end)
   vim.keymap.set('n', '<leader>y', function()
     vim.cmd('normal! yy')
     vim.fn.OSCYank(vim.fn.getreg('"'))
   end)

   vim.api.nvim_create_autocmd('TextYankPost', {
     pattern = '*', 
     callback = function()
       if vim.v.event.operator == 'y' then
         vim.fn.OSCYank(vim.fn.getreg('"'))
       end
     end
   })
 end
}
