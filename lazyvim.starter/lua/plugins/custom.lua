return {
  -- set tokyonight to transparent
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- set background to kill error notify
  {
    require("notify").setup({
      background_colour = "#000000",
    }),
  },

  -- add dap support
  { import = "lazyvim.plugins.extras.dap.core" },
  { import = "lazyvim.plugins.extras.dap.nlua" },

  -- add python dap
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },

  -- add comment
  {
    "numToStr/Comment.nvim",
    config = function(_, opts)
      require("Comment").setup()
    end,
  },

  -- add tmux navigation
  {
    "alexghergh/nvim-tmux-navigation",
    config = function()
      require("nvim-tmux-navigation").setup({
        disable_when_zoomed = true, -- defaults to false
      })
    end,
  },
}
