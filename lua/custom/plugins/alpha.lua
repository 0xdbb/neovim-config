return {
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- Require `nvim-web-devicons` to ensure it’s loaded
      require 'nvim-web-devicons'

      local startify = require 'alpha.themes.startify'
      startify.file_icons.provider = 'devicons' -- Set icon provider

      require('alpha').setup(startify.config)
    end,
  },
}
