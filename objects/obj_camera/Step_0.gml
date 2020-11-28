/// @description Insert description here
// You can write your code in this editor


/* UPDATE DESTINATION */
if (instance_exists(obj_player)) {
	xTo = obj_player.x;
	yTo = obj_player.y;
}

/* UPDATE OBJECT POSITION */
x += (xTo - x) / 25;
//y += (yTo - y) / 25;

x = clamp(x, widthhalf, 4000 - widthhalf);

/* UPDATE CAMERA VIEW */
camera_set_view_pos(cam, x - widthhalf, y);