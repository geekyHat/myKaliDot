return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
[[				                                              				        ]],	      
[[  e88'Y88                  888              Y88b Y88             d8   ]],
[[ d888  'Y   ,e e,   ,e e,  888 ee Y8b Y888P  Y88b Y8 8888 8888  d88   ]],
[[C8888 eeee d88 88b d88 88b 888 P   Y8b Y8P  b Y88b Y 8888 8888 d88888 ]], 
[[ Y888 888P 888   , 888   , 888 b    Y8b Y   8b Y88b  Y888 888P  888   ]],
[[  "88 88"   "YeeP"  "YeeP" 888 8b    888    88b Y88b  "88 88"   888   ]],
[[                                     888                              ]],
[[                                     888                              ]],  
}

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC e", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fo", "󰱼 > Find old files", "<cmd>Telescope find_old<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
