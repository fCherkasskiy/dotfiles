return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- Keeps standard default keys for other actions
      preset = "default",

      -- Completely disables Enter (<CR>) from accepting suggestions
      ["<CR>"] = {},

      -- Completely disables Tab from navigating or accepting suggestions
      ["<Tab>"] = {},
      ["<S-Tab>"] = {}, -- Optional: Disables Shift+Tab as well
    },
  },
}
