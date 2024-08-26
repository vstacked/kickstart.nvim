return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<Leader>gb', '<Cmd>Git blame<CR>', { desc = 'Git Blame' })
  end,
}
