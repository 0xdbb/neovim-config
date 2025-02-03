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
  cmd = 'Neotree',
  keys = {
    { '\\',         ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>ee', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<leader>ee'] = 'close_window',
        },
      },

      default_component_configs = {
        container = { enable_character_fade = true },
        indent = {
          indent_size = 2,
          padding = 1,
          with_markers = true,
          indent_marker = '│',
          last_indent_marker = '└',
          highlight = 'NeoTreeIndentMarker',
          expander_collapsed = '',
          expander_expanded = '',
          expander_highlight = 'NeoTreeExpander',
        },
        icon = {
          folder_closed = '',
          folder_open = '',
          folder_empty = '󰜌',
        },
        git_status = {
          symbols = {
            added = '',
            modified = '',
            deleted = '✖',
            renamed = '󰁕',
            untracked = '',
            ignored = '',
            unstaged = '󰄱',
            staged = '',
            conflict = '',
          },
        },
      },
      filtered_items = {
        visible = true,        -- Show all hidden files by default
        hide_dotfiles = false, -- Show dotfiles
        never_show = {         -- Add exceptions here
          '.git',              -- Hide .git directory
          '.DS_Store',         -- Hide .DS_Store (macOS-specific)
          'node_modules',      -- Hide node_modules directory
        },
      },
    },
  },
}

--
-- --
-- return {
--   'nvim-neo-tree/neo-tree.nvim',
--   branch = 'v3.x',
--   version = '*',
--   dependencies = {
--     'nvim-lua/plenary.nvim',
--     'nvim-tree/nvim-web-devicons', -- recommended for icons
--     'MunifTanjim/nui.nvim',
--     {
--       's1n7ax/nvim-window-picker',
--       version = '2.*',
--       config = function()
--         require('window-picker').setup {
--           filter_rules = {
--             include_current_win = false,
--             autoselect_one = true,
--             bo = {
--               filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
--               buftype = { 'terminal', 'quickfix' },
--             },
--           },
--         }
--       end,
--     },
--   },
--   cmd = 'Neotree',
--   keys = {
--     { '\\',         ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
--     { '<leader>ee', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
--   },
--   config = function()
--     vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError' })
--     vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn' })
--     vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo' })
--     vim.fn.sign_define('DiagnosticSignHint', { text = '󰌵', texthl = 'DiagnosticSignHint' })
--
--     require('neo-tree').setup {
--       close_if_last_window = false,
--       popup_border_style = 'rounded',
--       enable_git_status = true,
--       enable_diagnostics = true,
--       open_files_do_not_replace_types = { 'terminal', 'trouble', 'qf' },
--       sort_case_insensitive = false,
--       filesystem = {
--         window = {
--           mappings = {
--             ['\\'] = 'close_window',
--             ['<leader>ee'] = 'close_window',
--           },
--         },
--         filtered_items = {
--           visible = true,
--           hide_dotfiles = false,
--           never_show = { '.git', '.DS_Store', 'node_modules' },
--         },
--         follow_current_file = {
--           enabled = false,
--           leave_dirs_open = false,
--         },
--         group_empty_dirs = false,
--         hijack_netrw_behavior = 'open_default',
--         use_libuv_file_watcher = false,
--         window = {
--           mappings = {
--             ['<bs>'] = 'navigate_up',
--             ['.'] = 'set_root',
--             ['H'] = 'toggle_hidden',
--             ['/'] = 'fuzzy_finder',
--             ['D'] = 'fuzzy_finder_directory',
--             ['<c-x>'] = 'clear_filter',
--           },
--         },
--       },
--       default_component_configs = {
--         container = { enable_character_fade = true },
--         indent = {
--           indent_size = 2,
--           padding = 1,
--           with_markers = true,
--           indent_marker = '│',
--           last_indent_marker = '└',
--           highlight = 'NeoTreeIndentMarker',
--           expander_collapsed = '',
--           expander_expanded = '',
--           expander_highlight = 'NeoTreeExpander',
--         },
--         icon = {
--           folder_closed = '',
--           folder_open = '',
--           folder_empty = '󰜌',
--         },
--         git_status = {
--           symbols = {
--             added = '',
--             modified = '',
--             deleted = '✖',
--             renamed = '󰁕',
--             untracked = '',
--             ignored = '',
--             unstaged = '󰄱',
--             staged = '',
--             conflict = '',
--           },
--         },
--       },
--       buffers = {
--         follow_current_file = {
--           enabled = true,
--           leave_dirs_open = false,
--         },
--         group_empty_dirs = true,
--       },
--       git_status = {
--         window = {
--           position = 'float',
--           mappings = {
--             ['A'] = 'git_add_all',
--             ['gu'] = 'git_unstage_file',
--             ['ga'] = 'git_add_file',
--             ['gr'] = 'git_revert_file',
--             ['gc'] = 'git_commit',
--             ['gp'] = 'git_push',
--           },
--         },
--       },
--     }
--
--     vim.cmd [[nnoremap \ :Neotree reveal<cr>]]
--   end,
-- }
