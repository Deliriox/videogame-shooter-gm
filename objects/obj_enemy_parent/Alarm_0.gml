//Enemy shooting
bullet_speed=weapon.bullet_speed;
weapon_damage=weapon.total_damage;
instance_create_layer(x,y,"Instances",obj_bullet_enemy,{
		speed : bullet_speed,
		direction : direction,
		sprite_index: bullet_spr,
		damage : weapon_damage
	});
	alarm_set(0,fire_rate);