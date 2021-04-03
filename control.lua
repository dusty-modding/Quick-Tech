require('configs.bobs')

function on_player_creation(player)
  local technologies = {
    'automation',
    'basic-electronics',
    'basic-logistics',
    'basic-military',
    'basic-mining',
    'basic-optics',
    'logistics',
    'stone-wall'
  }

  if game.active_mods['bobassembly'] then
    technologies = populateBobTech(technologies)
  end

  for _, v in ipairs(technologies) do
    player.print('Technology = ' .. v)
    player.force.technologies[v].researched = true
  end
end

-- fires on the end of the cutscene (singleplayer)
script.on_event(defines.events.on_cutscene_cancelled, function(event)

	local player = game.players[event.player_index]
	on_player_creation(player)

end)
