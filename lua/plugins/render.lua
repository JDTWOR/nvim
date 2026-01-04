return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = "markdown",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-mini/mini.icons", -- Iconos bonitos para lenguajes
  },
  opts = {
    -- Renderizado siempre activo (incluso en modo insert)
    render_modes = true,

    code = {
      enabled = true,
      sign = true, -- Muestra signo en la columna izquierda
      style = "full", -- Todo activado (fondo, inline, lenguaje...)

      -- Header del lenguaje (icono + nombre)
      language = true,
      position = "right", -- 'right' se ve más limpio y moderno
      language_icon = true,
      language_name = true,
      language_pad = 2, -- Espacio alrededor del header

      -- Fondo desactivado para ciertos lenguajes (ej: diff)
      disable_background = { "diff" },

      -- Ancho y padding
      width = "block", -- Solo el ancho del código + padding
      left_pad = 2,
      right_pad = 4,
      min_width = 60,

      -- Bordes delgados y bonitos
      border = "thin", -- Líneas delgadas arriba/abajo
      above = "▄", -- Carácter superior
      below = "▀", -- Carácter inferior

      -- Highlights (puedes personalizarlos después)
      highlight = "RenderMarkdownCode",
      highlight_inline = "RenderMarkdownCodeInline",
    },
  },
}
