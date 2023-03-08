local user_bookmarks = vim.g.startup_bookmarks

local bookmark_texts = { "Bookmarks", "" }
local user_bookmark_mappings = {}

if not user_bookmarks then
    user_bookmarks = {}
    bookmark_texts = {}
end

for key, file in pairs(user_bookmarks) do
    bookmark_texts[#bookmark_texts + 1] = key .. " " .. file
end

for key, file in pairs(user_bookmarks) do
    user_bookmark_mappings[key] = "<cmd>e " .. file .. "<CR>"
end

local cat = {
  "          .",
  " /\\___/\\ ((",
  "  \\`@_@'/  ))",
  " {_:Y:.}_//",
  "----------{_}^-'{_}----------"
}

local quote = require("startup.functions").quote()
while true do
    if require("startup.utils").longest_line(quote) <= vim.o.columns - 15 then
        break
    end
    quote = require("startup.functions").quote()
end
local length = require("startup.utils").longest_line(quote) + 4

local complete = {}

table.insert(quote, 1, "")
quote[#quote + 1] = ""

table.insert(complete, "▛" .. string.rep("▀", length - 2) .. "▜")
local function spaces(amount)
    return string.rep(" ", amount)
end
for _, line in ipairs(quote) do
    table.insert(
        complete,
        "▌" .. " " .. line .. spaces(length - 3 - #line) .. "▐"
    )
end
table.insert(complete, "▙" .. string.rep("▄", length - 2) .. "▟")

for _, line in ipairs(cat) do
    complete[#complete + 1] = line
end

-- NOTE: lua dump(vim.fn.expand("#<1")) to get newest oldfile

local settings = {
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = complete,
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0,
    },
    body = {
        type = "oldfiles",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Oldfiles",
        margin = 5,
        content = "",
        highlight = "Special",
        default_color = "",
        oldfiles_amount = 5,
    },
    clock = {
        type = "text",
        content = function()
            local clock = " " .. os.date("%H:%M")
            local date = " " .. os.date("%d-%m-%y")
            return { clock, date }
        end,
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "",
        margin = 5,
        highlight = "Number",
        default_color = "#FFFFFF",
        oldfiles_amount = 10,
    },
    credits = {
      type = "text",
      content = function()
          local credits = "CHINER.NVIM"
          return { credits }
      end,
      align = "center",
      margin = 5,
      highlight = "TSString",
      default_color = "#FFFFFF",
    },
    options = {
        after = function()
            require("startup").create_mappings(user_bookmark_mappings)
            require("startup.utils").oldfiles_mappings()
        end,
        mapping_keys = false,
        cursor_column = 0.25,
        empty_line_between_mappings = false,
        disable_statuslines = true,
        paddings = { 1, 1, 1, 1 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { "header", "body", "clock", "credits" },
}

return settings
