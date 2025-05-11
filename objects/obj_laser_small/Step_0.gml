if instance_exists(obj_player)
{
	angle=(point_direction(x,y,obj_player.x,obj_player.y))
}
else
{
	instance_destroy(obj_laser_small)
}
image_angle=angle
motion_set(angle,vel);