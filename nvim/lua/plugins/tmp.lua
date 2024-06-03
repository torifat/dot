local function foo() end
foo()
local lazydev = true
return {
  -- {
  --   "folke/neodev.nvim",
  --   enabled = false,
  -- },
  -- {
  --   "folke/neoconf.nvim",
  --   enabled = true,
  -- },
  -- { "Bilal2453/luvit-meta", lazy = true },
  { "justinsgithub/wezterm-types", lazy = true },
  {
    "folke/lazydev.nvim",
    -- ft = "lua",
    opts = {
      runtime = "~/projects/neovim/runtime",
      debug = true,
      library = {
        wezterm = "wezterm-types",
      },
      -- enabled = true,
    },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    -- dev = true,
    opts = { show_help = false },
  },
  {
    "garymjr/nvim-snippets",
    -- dev = true,
  },
  {
    "folke/trouble.nvim",
    opts = { debug = true },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      -- registries = {
      --   "file:/home/folke/projects/mason-registry",
      -- },
    },
  },
  {
    "fei6409/log-highlight.nvim",
    event = "BufRead *.log",
    opts = {},
  },
  -- { "gbprod/yanky.nvim", dev = true },
  -- {
  --   enabled = false,
  --   "nvimdev/indentmini.nvim",
  --   opts = {
  --     exclude = {
  --       "help",
  --       "alpha",
  --       "dashboard",
  --       "neo-tree",
  --       "Trouble",
  --       "trouble",
  --       "lazy",
  --       "mason",
  --       "notify",
  --       "toggleterm",
  --       "lazyterm",
  --     },
  --   },
  --   event = "LazyFile",
  -- },
  {
    "t-troebst/perfanno.nvim",
    opts = function()
      local util = require("perfanno.util")
      local hl = vim.api.nvim_get_hl(0, { name = "Normal" })
      local bg = string.format("#%06x", hl.bg)
      local fg = "#dc2626"
      return {
        line_highlights = util.make_bg_highlights(bg, fg, 10),
        vt_highlight = util.make_fg_highlight(fg),
      }
    end,
    cmd = "PerfLuaProfileStart",
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "slope",
      },
    },
  },
  {
    "echasnovski/mini.align",
    opts = {},
    keys = {
      { "ga", mode = { "n", "v" } },
      { "gA", mode = { "n", "v" } },
    },
  },
  {
    "2kabhishek/nerdy.nvim",
    cmd = "Nerdy",
    keys = {
      { "<leader>ci", "<cmd>Nerdy<cr>", desc = "Pick Icon" },
    },
  },
  {
    "folke/flash.nvim",
    enabled = true,
    ---@type Flash.Config
    opts = {
      -- labels = "#abcdef",
      modes = {
        -- char = { jump_labels = false },
        -- treesitter = {
        --   label = {
        --     rainbow = { enabled = true },
        --   },
        -- },
        treesitter_search = {
          label = {
            rainbow = { enabled = true },
            -- format = function(opts)
            --   local label = opts.match.label
            --   if opts.after then
            --     label = label .. ">"
            --   else
            --     label = "<" .. label
            --   end
            --   return { { label, opts.hl_group } }
            -- end,
          },
        },
      },
      -- search = { mode = "fuzzy" },
      -- labels = "😅😀🏇🐎🐴🐵🐒",
    },
  },
}
