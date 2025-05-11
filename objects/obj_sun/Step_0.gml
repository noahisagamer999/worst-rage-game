if instance_exists(obj_player)
{
	x=obj_player.x+300
	y=obj_player.y-382
}
else
{
	firestate=0
}
if firestate=1
{
	sprite_index=Sprite16
	firerate-=1
	if firerate<1
	{
		if instance_exists(obj_player)
		{
		instance_create_layer(x,y,"instances",obj_laser_small)
		}
		firerate=75
}
}
else
if firestate=0
{
	sprite_index=Sprite15
	firerate=75
}
else
{
	sprite_index=Sprite16
	firerate-=1
	if firerate<1
	{
		if instance_exists(obj_player)
		{
		instance_create_layer(x,y,"instances",obj_deathbeam)
		}
		firerate=150
}
}