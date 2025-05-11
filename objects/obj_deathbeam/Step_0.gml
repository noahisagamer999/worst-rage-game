if place_meeting(x,y,obj_grass1)
{
	instance_destroy()
}
else
if place_meeting(x,y,obj_wall)
{
	instance_destroy()
}
else
if place_meeting(x,y,obj_ceiling)
{
	instance_destroy()
}
if instance_exists(obj_player)
{
	angle=(point_direction(x,y,obj_player.x,obj_player.y))
}
else
{
	instance_destroy(obj_deathbeam)
}
image_angle=angle
motion_set(angle,vel);
effect_create_layer("effect_1",ef_firework,x,y,10000,make_color_rgb(255, 0, 0))