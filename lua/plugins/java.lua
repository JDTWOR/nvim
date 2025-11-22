return {
  "nvim-java/nvim-java",
  dependencies = {
    "nvim-java/nvim-java-core", -- Core del plugin
    "nvim-java/nvim-java-test", -- Funcionalidades de pruebas
    -- Otras dependencias opcionales
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          jdtls = {}, -- Configuración base de JDTLS
        },
      },
    },
    -- Si quieres depuración (Debugging)
    {
      "mfussenegger/nvim-dap",
      opts = function(_, opts)
        -- Asegúrate de que nvim-dap está habilitado y configurado
        -- con el extra 'dap.core' de LazyVim.
      end,
    },
    "nvim-java/nvim-java-dap", -- Integración con nvim-dap
  },
  ft = { "java" }, -- Carga el plugin solo para archivos .java
  -- Configuraciones adicionales para Spring Boot o JDTLS se harían aquí
  -- utilizando la función `config` o `opts` si fuera necesario.
}
