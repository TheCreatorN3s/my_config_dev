-- In your blink.cmp configuration file (e.g., lua/plugins/blink.lua)
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter", -- Usa Enter para confirmar en lugar de Tab
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
