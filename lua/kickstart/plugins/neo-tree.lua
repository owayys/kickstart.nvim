-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
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
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
        position = 'right',
      },
    },
  },
}
