local function concatLists(t1, t2)
  for _, v in ipairs(t2) do
    table.insert(t1, v)
  end

  return t1
end

function populateBobTech(config)
  local bobstech = {
    'basic-automation',
    'electronics-machine-1',
    'fluid-mixing-furnace',
    'fluid-furnace',
    'fluid-chemical-furnace'
  }

  return concatLists(config, bobstech)
end
