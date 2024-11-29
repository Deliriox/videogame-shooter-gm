//Player movement
if keyboard_check(ord("A"))||keyboard_check(vk_left) {
    hspeed -= spd;
}
if keyboard_check(ord("D"))||keyboard_check(vk_right) {
    hspeed += spd;
}

if keyboard_check(ord("W"))||keyboard_check(vk_up) {
    vspeed -= spd;
}
if keyboard_check(ord("S"))||keyboard_check(vk_down) {
    vspeed += spd;
}

if keyboard_check_released(ord("A"))||keyboard_check_released(ord("D"))||keyboard_check_released(vk_left)||keyboard_check_released(vk_right)
hspeed=0;
if keyboard_check_released(ord("W"))||keyboard_check_released(ord("S"))||keyboard_check_released(vk_up)||keyboard_check_released(vk_down)
vspeed=0;

// limit speed by max speed
hspeed = clamp(hspeed, -spd+2, spd);
vspeed = clamp(vspeed, -spd, spd);

// override constraints
hspeed = clamp(hspeed, sprite_width - x, room_width - x);
vspeed = clamp(vspeed, sprite_height/2 - y, (room_height-(sprite_height/2))-y);


//Shooting
if (mouse_check_button_pressed(mb_left))
{
	instance_create_layer(x,y,"Instances",obj_bullet_player);
}