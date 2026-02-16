return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    config = function()
      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          layout_strategy = "vertical",
          layout_config = {
            vertical = {
              height = 0.6,
              width = 0.9,
              prompt_position = "bottom",
              preview_height = 0.4,
              mirror = true,
            },
          },
          border = true,
          sorting_strategy = "descending",
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_ivy({}),
          },
        },
      })

      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("file_browser")
      require("telescope").load_extension("fzf")
    end,
  },
}
