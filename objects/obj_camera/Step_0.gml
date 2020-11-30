/// @description Updates camera position and triggers event alarms
// You can write your code in this editor


/* UPDATE DESTINATION */
if (instance_exists(obj_player) && !alarm0_triggered) {
	xTo = obj_player.x;
	yTo = obj_player.y;
} else {
	switch (camera_target_step) {
		case 0:
			xTo = gummybear_room_width - widthhalf;
			yTo = obj_player.y;
			break;
		case 1:
			xTo = obj_player.x;
			yTo = obj_player.y;
			break;
		default:
			xTo = obj_player.x;
			yTo = obj_player.y;
	}
}	


/* UPDATE OBJECT POSITION */
x += (xTo - x) / 25;

if (intro_complete) {
	y += (yTo - y) / 25;
}

if (intro_complete) {
	switch (camera_target_step) {
		case 0:
			x = clamp(x, widthhalf, gummybear_room_width - widthhalf);
			break;
		case 1:
			x = clamp(x, gummybear_room_width - widthhalf, room_width - widthhalf);
			break;
		default:
			x = clamp(x, widthhalf, room_width - widthhalf);
	}
	
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
	game_intro.alarm[0] = room_speed;
	instance_activate_layer("Disappearing_Walls");
}