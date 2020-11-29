/// @description Updates camera position and triggers event alarms
// You can write your code in this editor


/* UPDATE DESTINATION */
if (instance_exists(obj_player) && !alarm0_triggered) {
	xTo = obj_player.x;
	yTo = obj_player.y;
} else {
	xTo = room_width - widthhalf;
	yTo = obj_player.y;
}	


/* UPDATE OBJECT POSITION */
x += (xTo - x) / 25;

if (intro_complete) {
	y += (yTo - y) / 25;
}

if (intro_complete) {
	x = clamp(x, widthhalf, room_width - widthhalf);
	
	if (!camera_pan_complete) {
		y = clamp(y, 794 + heighthalf, 100000);
		alarm_set(0, 1);
	}
} else {
	x = clamp(x, widthhalf, 4000 - widthhalf);
}

/* UPDATE CAMERA VIEW */
if (intro_complete) {
	camera_set_view_pos(cam, x - widthhalf, y - heighthalf);
} else {
	camera_set_view_pos(cam, x - widthhalf, y);
}

/* CHECK FOR GUMMY BEAR CHARACTER IN VIEW */
if ((camera_get_view_x(cam) >= gummybear_location - camera_get_view_width(cam)) && !alarm0_triggered) {
	alarm0_triggered = true;
	game.alarm[0] = 2 * room_speed;
	instance_activate_layer("Disappearing_Walls");
}