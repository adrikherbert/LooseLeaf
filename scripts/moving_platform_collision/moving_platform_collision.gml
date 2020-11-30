// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moving_platform_collision(){
	if (movement_direction == 0) {
		x += movement_speed;
	
		if (place_meeting(x + 1, y, obj_player)) {
			obj_player.x += movement_speed;
		}
	
		if (x >= movement_stop) {
			movement_direction = 2;
		}
	
	} else if (movement_direction == 2) {
		x -= movement_speed;
	
		if (place_meeting(x - 1, y, obj_player)) {
			obj_player.x -= movement_speed;
		}
	
		if (x <= movement_start) {
			movement_direction = 0;
		}
	}
}