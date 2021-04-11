require('libs.utils')

function buildConfig (modSettings, modList)
  local techs = {}
  local modTech = {
    bobassembly = {
      'basic-automation',
      'electronics-machine-1',
      'fluid-mixing-furnace',
      'fluid-furnace',
      'fluid-chemical-furnace'
    },
    boblogistics = {
      'logistics-0',
      'more-inserters-1',
      'long-inserters-1',
      'near-inserters'
    },
    bobplates = {
      'chemical-processing-1',
      'alloy-processing'
    },
    BigBags = {
      'pickstick',
      'inventory-size'
    },
    epic_mining_and_crafting_speed_research = {
      'crafting-speed-upgrade1',
      'mining-speed-upgrade1'
    }
  }
  local settingHash = {
    bobassembly = 'qt-research-bobassembly',
    boblogistics = 'qt-research-boblogistics',
    bobplates = 'qt-research-bobplates',
    BigBags = 'qt-research-bigbags',
    epic_mining_and_crafting_speed_research = 'qt-research-craft-mine'
  }

  for i = 1, #modList do
    local modName = modList[i]
    local mod = game.active_mods[modName]
    local setting = settingHash[modName]

    if mod and modSettings[setting].value == true then
      techs = concatLists(techs, modTech[modName])
    end
  end

  return techs
end
