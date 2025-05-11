if invincible=0
{
if death=1
{
	effect_create_above(ef_explosion,x,y,50,make_color_rgb(50, 0, 0))
	effect_create_above(ef_firework,x,y,999,make_color_rgb(160, 0, 0))
	instance_destroy()
	obj_checkpoint.alarm[1]=69
}
}
if not (keyboard_check(ord("D"))) and not (keyboard_check(ord("A"))) and not (keyboard_check(ord("W")))
{
	sprite_index=spr_player_idle
}
else
{
	sprite_index=spr_player_placeholder
}
if noclip=0
{
velh = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * 3.5;
if gravstate=2
{
		if 180<capeangle or 180=capeangle
	{
		if not capeangle=180
		{
			capeangle+=4
		}
	}
	else
	{
	capeangle-=4
	}
	}
else
{
	if keyboard_check(ord("D"))
{
	{
	if -50>capeangle or capeangle=50
	{
	   if not capeangle=-50
	   {
		   capeangle+=2
		   }
	}
	else
	{
	capeangle-=2
	}
	}
}
}
if death= not 1
{
if gravstate=0
{
	can_jump=1
}
if (place_meeting(x  + velh, y, obj_wall)) {
    while (!place_meeting(x + sign(velh), y, obj_wall)) {
        x = x + sign(velh);
    }
    velh = 0;
}
}

	x=x+velh
if keyboard_check(ord("W")) //change to numpad2
{
	if can_jump=1
	{
		if (place_meeting(x, y + vely, obj_ceiling)) {
    while (!place_meeting(x, y + sign(vely), obj_ceiling)) {
        y = y + sign(vely);
    }
    vely = 0;
	gravstate=2
	can_jump=0;
}
		y=y-vely 
		vely=.5*vely/3+8
	}
}


else
{
	if gravstate=1
{
vely=0
gravstate=2
can_jump=0
}
}
if gravstate=2
{
can_jump=0
if (place_meeting(x, y + vely, obj_grass1)) {
    while (!place_meeting(x, y + sign(vely), obj_grass1)) {
        y = y + sign(vely);
    }
    vely = 0;
	gravstate=0;
	can_jump=0;
}
	y=y+vely 
		vely=.5*vely/3+7
	if place_meeting(x,y-1,obj_grass1)
	{
	gravstate=0
	if not keyboard_check(ord("W"))
	{
	can_jump=1
	}
	vely=0

}
}

 if keyboard_check_pressed(ord("W")) and can_jump=1
{
	vely=5
	gravstate=1;
	alarm[0]=30;
}
if not keyboard_check(ord("W"))
{
	if gravstate=1
{
vely=0;
gravstate=2;
can_jump=0;
}
}
if not place_meeting(x,y+2,obj_grass1)
{
	if gravstate=0 // no cyote time bc im trying to create the worst rage game after all
	{
		gravstate=2
	}

}
}
else
{
	velh = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * 10;
	vely = (keyboard_check(ord("W")) - keyboard_check(ord("S"))) * 10;
	x=x+velh
	y=y-vely
}
if keyboard_check_pressed(vk_f1)
{
	if invincible=0
	{
		invincible=1
	}
	else
		{
			invincible=0
		}
}
if keyboard_check_pressed(vk_f2)
{
	invincible=0
	death=1
}

if keyboard_check_pressed(vk_f3)
{
	invincible=1
	if noclip=0
	{
		noclip=1
	}
	else
		{
			noclip=0
		}
}
if gravstate=3
{
	if (place_meeting(x, y + vely, obj_ceiling)) {
    while (!place_meeting(x, y + sign(vely), obj_ceiling)) {
        y = y + sign(vely);
    }
    vely = 0;
	gravstate=2
	can_jump=0;
}
		y=y-vely 
		vely=1*vely/2+15
}
if gravstate=4
{
	if (place_meeting(x, y + vely, obj_ceiling)) {
    while (!place_meeting(x, y + sign(vely), obj_ceiling)) {
        y = y + sign(vely);
    }
    vely = 0;
	gravstate=2
	can_jump=0;
}
		y=y-vely 
		vely=1*vely/1.2+25
}