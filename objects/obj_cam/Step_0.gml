if instance_exists(obj_player)
{
if obj_player.death= not 1
{

if (follow != noone)
{
	xto=follow.x-342
	yto=follow.y-32
}
x+=(xto-x)/obj_player.velh/2*3
y+=(xto-x)/obj_player.vely/2*3
camera_set_view_pos(view_camera[0],xto-100,yto-350)
//camera_set_view_pos(view_camera[0],x-(camwidth*.5),y-(camheight*.5));
}
}