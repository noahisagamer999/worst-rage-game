killrandom=round(random(19))
	if killrandom=1
	{
		obj_player.death=1
		do
		{
			global.respawnx=736
        global.respawny=1312
		}
		until(object_exists(obj_player))
	}