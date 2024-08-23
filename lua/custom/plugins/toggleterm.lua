return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {},
    config = function()
      require('toggleterm').setup {
        shell = 'pwsh',
        open_mapping = [[<C-\>]],
        direction = 'float',
      }

      local Terminal = require('toggleterm.terminal').Terminal

      local lazygit = Terminal:new { cmd = 'lazygit', hidden = true, direction = 'float' }

      function _lazygit_toggle()
        lazygit:toggle()
      end

      vim.keymap.set('n', '<leader>l', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true, desc = 'LazyGit' })
    end,
  },
}
