/// @desc got hit 

obj_control.player_health -= 15;
disabled = false;
image_blend = normal_color;
if(id = obj_control.player_id)
{
	instance_destroy();
}