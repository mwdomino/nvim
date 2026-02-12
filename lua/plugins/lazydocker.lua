return {
  {
    "crnvl96/lazydocker.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("lazydocker").setup()
    end
  }
}
