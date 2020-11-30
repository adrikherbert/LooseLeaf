/// @description Insert description here
// You can write your code in this editor
if (movement_direction == 3) {
	y -= movement_speed;
	
	if (place_meeting(x, y - 1, obj_player)) {
		obj_player.y -= movement_speed;
	}
	
	if (y <= movement_stop) {
		movement_direction = 1;
	}
	
} else if (movement_direction == 1) {
	y += movement_speed;
		
	if (place_meeting(x, y - movement_speed - 1, obj_player)) {
		obj_player.y += movement_speed;
	}
	
	if (y >= movement_start) {
		movement_direction = 3;
	}
}

if (place_meeting(x, y - 1, obj_player) && !standing) {
	standing = true;
	audio_play_sound(Emajor_7, 3, false)
}

if (!place_meeting(x, y - 1, obj_player)) {
	standing = false;
}
	