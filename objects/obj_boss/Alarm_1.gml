instance_create_layer(x, y, "Instances", obj_fireball);
instance_create_layer(x - 5, y + 10, "Instances", obj_fireball);
instance_create_layer(x + 5, y - 20, "Instances", obj_fireball);
instance_create_layer(x - 10, y + 30, "Instances", obj_fireball);
instance_create_layer(x + 10, y - 40, "Instances", obj_fireball);

if(obj_control.boss_health > 0)
{
	obj_control.boss_health -= 2;
}

if(obj_control.boss_health == 0){
	alarm[4] = game_get_speed(gamespeed_fps);
	sprite_index = spr_realboss;
	y = obj_boss.y + 55;
	obj_control.boss_health = -1;
}

