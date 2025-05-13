if(room == Room1)
{
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_text(vx + 90, vy + 5, "Player Health: " + string(player_health));
draw_text(vx + 90, vy + 25, "Boss Shield: " + string(boss_health));
draw_text(vx + 90, vy + 45, "Boss Health: " + string(boss_health2));
}

if(room == Room2)
{
	draw_set_halign(fa_center)
	draw_text(1025, 440, "You win" )
	
}