local compe = require'compe'

local words_file = vim.fn.expand("~/.config/nvim/spell/10k.txt")
local word_map = {}
for word in io.lines(words_file) do
  local first = word:sub(1, 1)
  local first_upper = first:upper()
  if not word_map[first] then
    word_map[first] = {}
    word_map[first_upper] = {}
  end
  table.insert(word_map[first], word)
  table.insert(word_map[first_upper], first_upper .. word:sub(2))
end

local Source = {}

function Source.new()
  return setmetatable({}, { __index = Source })
end

function Source:get_metadata()
  return {
    priority = 9;
    menu = '[W]';
  }
end

function Source:determine(context)
  return compe.helper.determine(context)
end

function Source:complete(context)
  local first = context.input:sub(1, 1)
  local words = word_map[first]
  -- NOTE: `word_map` is modified. Is this ok?
  if words then
    context.callback({ items = words; })
  end
end

return Source
