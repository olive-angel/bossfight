// @desc core enemy logic 

//Horizontal collision
if (place_meeting(x + speed, y, obj_wall)) {
	while (!place_meeting(x + sign(speed), y, obj_wall)) {
		x += sign(speed);
	}
	speed *= -1;
}

if(speed != 0) {
	image_xscale = sign(speed);
}
