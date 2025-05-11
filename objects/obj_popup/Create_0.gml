randomx=random_range(0,960)
randomy=random_range(0,540)
sprite_index=choose(Sprite22,Sprite23,Sprite24,Sprite25,Sprite26,Sprite27,Sprite28,Sprite29,Sprite32)
global.popupprevious=sprite_index
if sprite_index=global.popupprevious
{
	sprite_index=choose(Sprite22,Sprite23,Sprite24,Sprite25,Sprite26,Sprite27,Sprite28,Sprite29,Sprite32)
}
if randomx<250 or randomx>710
{
	randomx=random_range(0,960)
}
if randomy<150 or randomy>390
{
	randomy=random_range(0,540)
}