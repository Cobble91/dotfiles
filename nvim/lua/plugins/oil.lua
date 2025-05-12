return {
  'stevearc/oil.nvim',
  dependencies = { { 'nvim-tree/nvim-web-devicons', opts={} } },
  lazy = false,
  config = function()
    local oil = require("oil")
    oil.setup()
    vim.keymap.set("n", "<leader>o", "<cmd>Oil<CR>")
    -- vim.keymap.set("n", "<BS>", "<cmd>Oil ..<CR>")
  end,
  -- keys = {
  --   ["<BS>"] = { "actions.parent", mode = "n" },
  -- },
}
