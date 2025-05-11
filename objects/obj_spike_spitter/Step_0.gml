velh=randommove
x=x+velh
timer=timer-1
timer2=timer2-1
timer3=timer3-1
if timer<0
{
if movecycle=0
{
	movecycle=1
	randommove=-1
	timer=80
}
else
{
movecycle=0
randommove=1
timer=80
}
}
if instance_exists(obj_player)
{
if abs(obj_player.x - x)<120
{
	if timer2<0
	{
		if timer3<0
		{
			timer3=10
			instance_create_layer(x,y,"instances",obj_vomitspike)
		}
			
	}
	if timer2<-60
	{
		timer2=65
	}
}
}