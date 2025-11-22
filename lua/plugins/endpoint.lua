return {
  "zerochae/endpoint.nvim",
  dependencies = {
    "folke/snacks.nvim",
  },
  cmd = { "Endpoint", "EndpointRefresh" },
  config = function()
    require("endpoint").setup({
      picker = {
        type = "snacks",
        options = {
          snacks = {},
        },
        previewer = {
          enable_highlighting = true,
        },
      },

      cache = {
        mode = "session",
      },
      ui = {
        show_icons = false,
        show_method = true,
        methods = {
          GET = { color = "EndpointGET" },
          POST = { color = "EndpointPOST" },
          PUT = { color = "EndpointPUT" },
          DELETE = { color = "EndpointDELETE" },
          PATCH = { color = "EndpointPATCH" },
          ROUTE = { color = "Identifier" },
        },
      },
    })
    vim.api.nvim_set_hl(0, "EndpointGET", { fg = "#5af78e", bold = true })
    vim.api.nvim_set_hl(0, "EndpointPOST", { fg = "#57c7ff", bold = true })
    vim.api.nvim_set_hl(0, "EndpointPUT", { fg = "#ff6ac1", bold = true })
    vim.api.nvim_set_hl(0, "EndpointDELETE", { fg = "#ff5c57", bold = true })
    vim.api.nvim_set_hl(0, "EndpointPATCH", { fg = "#f3f99d", bold = true })
  end,
}
