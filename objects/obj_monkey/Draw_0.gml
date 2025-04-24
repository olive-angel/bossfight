/// @desc draw monkey with gun 
var dir = point_direction(x, y, mouse_x, mouse_y);
var flip = (mouse_x > x)*2-1; 

//monkey
draw_sprite_ext(spr_monkey, image_index, x, y, flip, 1, 0, image_blend, image_alpha);


// gun
draw_sprite_ext(spr_gun, 0, x-4*flip, y, 1, flip, dir, image_blend, image_alpha);
