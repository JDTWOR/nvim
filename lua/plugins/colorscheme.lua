return {
  {
    "Shatur/neovim-ayu",
    lazy = true,
    priority = 1,
  },

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        -- configuración aquí
      })
      -- No ejecutar colorscheme aquí, para que no sobrescriba moonfly
      vim.cmd("colorscheme github_dark_tritanopia")
    end,
  },

  -- Este será el que se cargue al inicio
}
