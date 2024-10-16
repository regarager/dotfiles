return {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
      local TagConfigs = require("nvim-ts-autotag.config.init")
      TagConfigs:add_alias("stpl", "html")
    end
  }
}
