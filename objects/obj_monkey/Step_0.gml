/// @description Core Player Logic

//Get player inputs
if(!disabled){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	key_shoot = mouse_check_button_pressed(mb_left)
}

if(key_shoot)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
}

//Calc movoment vertical
var grv_final = grv;
if (on_wall != 0) && (vsp > 0) && (key_left != 0 || key_right != 0) {
	grv_final = grv_wall;
}
vsp += grv_final;
  
if (on_ground) {
	currjumps = 0;
}

if key_jump && (currjumps < maxjumps) {
	vsp = -jumpsp;
	currjumps += 1;
}

var _move = key_right - key_left;

hsp = _move * walksp;

//Horizontal collision
if (place_meeting(x + hsp, y, obj_wall)) {
	while (!place_meeting(x + sign(hsp), y, obj_wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x, y + vsp, obj_wall)) {
	while (!place_meeting(x, y + sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

vsp = clamp(vsp, -12, 20);
y += vsp;

//Calculate current status
on_ground = place_meeting(x, y + 1, obj_wall);
on_wall = place_meeting(x + 1, y, obj_wall) - place_meeting(x - 1, y, obj_wall);
going_right = hsp > 0;

if(hsp != 0) image_xscale = sign(hsp); 
