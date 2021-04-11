if (mods or script.active_mods)['bobassembly'] then
  data:extend({
    {
      type = 'bool-setting',
      name = 'qt-research-bobassembly',
      setting_type = 'runtime-per-user',
      default_value = true
    },
  })
end

if (mods or script.active_mods)['boblogistics'] then
  data:extend({
    {
      type = 'bool-setting',
      name = 'qt-research-boblogistics',
      setting_type = 'runtime-per-user',
      default_value = true
    },
  })
end

if (mods or script.active_mods)['bobplates'] then
  data:extend({
    {
      type = 'bool-setting',
      name = 'qt-research-bobplates',
      setting_type = 'runtime-per-user',
      default_value = true
    },
  })
end

if (mods or script.active_mods)['BigBags'] then
  data:extend({
    {
      type = 'bool-setting',
      name = 'qt-research-bigbags',
      setting_type = 'runtime-per-user',
      default_value = true
    },
  })
end

if (mods or script.active_mods)['epic_mining_and_crafting_speed_research'] then
  data:extend({
    {
      type = 'bool-setting',
      name = 'qt-research-craft-mine',
      setting_type = 'runtime-per-user',
      default_value = true
    },
  })
end
