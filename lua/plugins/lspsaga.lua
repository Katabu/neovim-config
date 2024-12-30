
return {
  "glepnir/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("lspsaga").setup({
      -- Customize your configuration here
      -- For example:
      ui = {
        -- Border style: single, double, rounded, solid, shadow.
        border = "rounded",
        -- This option only works in Neovim 0.9+
        title = true,
        -- Custom colors, etc.
      },
      symbol_in_winbar = {
        enable = true,
      },
      code_action = {
        show_server_name = true,
        extend_gitsigns = false,
      },
    })
  end,
  dependencies = {
    {"nvim-tree/nvim-web-devicons"},
    -- If you want to enable "symbol_in_winbar" feature
    {"nvim-treesitter/nvim-treesitter"}
  }
}
