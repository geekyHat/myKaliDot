return {
  -- Windows WSL needs wsl-open for the :ObsidianOpen command. `sudo npm -i -g wsl-open` 
  -- Linux needs xclip to paste images`sudo apt install xclip`
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  keys = {
{ "<leader>on", "<cmd>ObsidianNew<cr>", desc = "New Obsidian note", mode = "n" },
      { "<leader>oo", "<cmd>ObsidianOpen<cr>", desc = "Open Obsidian notes", mode = "n" },
      { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Search Obsidian notes", mode = "n" },
      { "<leader>osw", "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick Switch", mode = "n" },
      { "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Show location list of backlinks", mode = "n" },
      { "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "Follow link under cursor", mode = "n" },
      { "<leader>op", "<cmd>ObsidianPasteImg<cr>", desc = "Paste imate from clipboard under cursor", mode = "n" },
      { "<leader>of", "<cmd>ObsidianFollowLink<cr>", desc = "follows note under cursor", mode = "n" },
      { "<leader>oe", "<cmd>ObsidianExtractNote<cr>", desc = "Extracts visually selected note creates a new one with link", mode = "n" },
      { "<leader>od", "<cmd>ObsidianToggleCheckbox<cr>", desc = "Cycle through checkbox options.", mode = "n" },
  },
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
  --    {
  --      name = "personal",
  --      path = "~/vaults/personal",
  --    },
      {
        name = "Notes",
        path = "/mnt/x/MyNotes-2024",
      },
    },

  },
  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },
  new_notes_location = "current_dir",
  wiki_link_func = function(opts)
    if opts.id == nil then
      return string.format("[[%s]]", opts.label)
    elseif opts.label ~= opts.id then
      return string.format("[[%s|%s]]", opts.id, opts.label)
    else
      return string.format("[[%s]]", opts.id)
    end
  end,


  note_frontmatter_func = function(note)
    -- This is equivalent to the default frontmatter function.
    local out = { id = note.id, aliases = note.aliases, tags = note.tags, area = "", project = "" }

    -- `note.metadata` contains any manually added fields in the frontmatter.
    -- So here we just make sure those fields are kept in the frontmatter.
    if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
      for k, v in pairs(note.metadata) do
        out[k] = v
      end
    end
    return out
  end,

  note_id_func = function(title)
    -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
    -- In this case a note with the title 'My new note' will be given an ID that looks
    -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
    local suffix = ""
    if title ~= nil then
      -- If title is given, transform it into valid file name.
      suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    else
      -- If title is nil, just add 4 random uppercase letters to the suffix.
      for _ = 1, 4 do
        suffix = suffix .. string.char(math.random(65, 90))
      end
    end
    return tostring(os.time()) .. "-" .. suffix
  end,

  templates = {
      subdir = "templates",
      date_format = "%d-%m-%Y",
      time_format = "%H:%M",
      tags = "",
  },
}
