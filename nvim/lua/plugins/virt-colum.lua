return {
  "lukas-reineke/virt-column.nvim",
  config = function()
    require("virt-column").setup({
      enabled = true,
      char = "│",
      virtcolumn = "130",
      highlight = "@Markup",
    })
  end,
}
