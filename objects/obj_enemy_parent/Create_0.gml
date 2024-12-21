//Init enemy stats
direction=180;
hp=1;
spd=3;
shield=0;
bullet_spr=spr_bullet_enemy;
weapon=obj_enemy_wpn;
bullet_speed=0;
weapon_damage=0;
bullet_shot=false;
fire_rate=60;

alarm_set(0,fire_rate);