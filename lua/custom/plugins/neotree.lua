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
        '<Space>e',
        function()
          require('neo-tree.command').execute {
            toggle = true,
            source = 'filesystem',
            position = 'right',
          }
        end,
        desc = 'Filesystem (root dir)',
      },
    },
  },
}
