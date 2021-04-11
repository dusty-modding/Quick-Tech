require('configs.build')
require('libs.utils')

function on_player_creation(player)
  local technologies = {
    'automation',
    'military',
    'electronics',
    'optics',
    'logistics',
    'gate',
    'landfill',
    'steel-processing',
    'logistic-science-pack',
    'gun-turret',
    'steel-axe',
    'fast-inserter',
    'stone-wall',
    'toolbelt'
  }

  technologies = concatLists(technologies, buildConfig(player.mod_settings, {
    'BigBags',
    'bobassembly',
    'boblogistics',
    'bobplates',
    'epic_mining_and_crafting_speed_research'
  }))

  for i, v in pairs(technologies) do
    local tech = player.force.technologies[v]

    if tech.enabled then
      tech.researched = true
    end
  end

  player.print('QT Finished Research')
end

-- fires on the end of the cutscene (singleplayer)
script.on_event(defines.events.on_cutscene_cancelled, function(event)

	local player = game.players[event.player_index]
	on_player_creation(player)

end)
