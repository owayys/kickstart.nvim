return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      settings = {
        separate_diagnostic_server = true,
        publish_diagnostic_on = 'insert_leave',
        expose_as_code_action = {},
        tsserver_path = nil,
        tsserver_plugins = {},
        tsserver_max_memory = 'auto',
        tsserver_format_options = {},
        tsserver_file_preferences = {},
        tsserver_locale = 'en',
        complete_function_calls = false,
        include_completions_with_insert_text = true,
        -- WARNING: Experimental feature also in VSCode, because it might hit performance of server.
        -- possible values: ("off"|"all"|"implementations_only"|"references_only")
        code_lens = 'off',
        disable_member_code_lens = true,
        -- WARNING: it is disabled by default (maybe you configuration or distro already uses nvim-ts-autotag,
        -- that maybe have a conflict if enable this feature. )
        jsx_close_tag = {
          enable = false,
          filetypes = { 'javascriptreact', 'typescriptreact' },
        },
      },
    },
    config = function(_, opts)
      require('typescript-tools').setup(opts)
    end,
  },
}
