//Movement
x-=spd;
if (alarm_get(0) == 0)
{
	instance_create_layer(x,y,"Instances",obj_bullet_enemy,{
		speed : 8,
		direction : 180,
		sprite_index: spr_bullet_enemy,
		damage : 1
	});
	alarm_set(0,test);
}