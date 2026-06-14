return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
      light_style = "day", -- The theme is used when the background is set to light
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = false, -- Configure the colors used when opening a `:terminal` in Neovim
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "transparent", -- style for sidebars, see below
        floats = "transparent", -- style for floating windows
      },
      day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      dim_inactive = true, -- dims inactive windows
      lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
      cache = true, -- When set to true, the theme will be cached for better performance
      plugins = {
        -- enable all plugins when not using lazy.nvim set to false to manually enable/disable plugins
        all = package.loaded.lazy == nil, -- uses plugin manager to enable needed plugins
        auto = true,
        -- add any plugins here that you want to enable
        -- see: https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
        -- telescope = true,
      },
    },
  },
  {
    "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true, -- enable transparent floating windows
        solid = false, -- use solid styling for floating windows, see |winborder|
      },
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      -- dim_inactive = {
      --   enabled = true, -- dims the background color of inactive window
      --   shade = "dark",
      --   percentage = 0.5, -- percentage of the shade to apply to the inactive window
      -- },
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = { "bold" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
    },
  },
  {
    "bluz71/vim-moonfly-colors",
  },
  {
    "vague2k/vague.nvim",
  },

  {
    "olimorris/onedarkpro.nvim",
  },
  {
    "rmehri01/onenord.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-nvim",
    },
  },
}
