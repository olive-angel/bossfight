

var hole_num = irandom_range(1, 5);
if (hole_num == 1) player_id = instance_create_layer(hole1.x, hole1.y, "Instances", obj_monkey);
if (hole_num == 2) player_id = instance_create_layer(hole2.x, hole2.y, "Instances", obj_monkey);
if (hole_num == 3) player_id = instance_create_layer(hole3.x, hole3.y, "Instances", obj_monkey);
if (hole_num == 4) player_id = instance_create_layer(hole4.x, hole4.y, "Instances", obj_monkey);
if (hole_num == 5) player_id = instance_create_layer(hole5.x, hole5.y, "Instances", obj_monkey);
