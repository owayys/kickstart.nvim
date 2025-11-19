return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    opts = {
      window = {
        position = 'right',
      },
    },
    keys = {
      {
        '<Space>E',
        function()
          require('neo-tree.command').execute {
            toggle = true,
            source = 'filesystem',
            position = 'right',
          }
        end,
        desc = 'Filesystem (root dir)',
      },
      {
        '<Space>e',
        '<C-w>w',
        desc = 'Focus Filesystem (root dir)',
      },
    },
  },
}
