return {
  "lewis6991/hover.nvim",
  config = function()
    require("hover").setup({
      init = function() -- opcional: inicializar lenguajes específicos
        require("hover.languages.java")
      end,
      preview_opts = {
        border = nil,
      },
      title = true,
    })

    -- mapeo
    vim.keymap.set("n", "K", require("hover").hover, { desc = "Hover Docs" })
  end,
  dependencies = { "neovim/nvim-lspconfig" },
}
