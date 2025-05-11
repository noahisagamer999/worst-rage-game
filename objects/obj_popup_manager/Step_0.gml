if state=1
{
	cooldown-=1
	if cooldown<0
	{
		if instance_exists(obj_player)
		{
			repeat 2*round(timeslooped/7)+2
			{
		instance_create_layer(obj_player.x,obj_player.y,"popup_layer",obj_popup)
			}
		timeslooped+=1
		if timeslooped>30
		{
			timeslooped=round(random_range(2,5))
		}
		cooldown=round(300-timeslooped*random_range(7,13))
		}
		
	}
}