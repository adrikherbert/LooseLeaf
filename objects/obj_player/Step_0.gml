/// @description physics to step
// You can write your code in this editor

/*
	keyboard_check checks if pressed each frame
	keyboard_check_pressed does not repeatedly return true if key is held
*/
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check_pressed(vk_up);

var move = key_right - key_left;		// 1 if right, -1 if left
hsp = move * walksp;					// sets movement

vsp = vsp + grv;

if (place_meeting(x, y + 1, obj_invisibleWall) && (key_up)) {
	vsp = -15;
}

if (place_meeting(x + hsp, y, obj_invisibleWall)) {
	
	while (!place_meeting(x + sign(hsp), y, obj_invisibleWall)) {
		x = x + sign(hsp);
	}
	
	hsp = 0;
}

if (place_meeting(x + hsp, y, obj_disappearingWall)) {
	
	while (!place_meeting(x + sign(hsp), y, obj_disappearingWall)) {
		x = x + sign(hsp);
	}
	
	hsp = 0;
}

x = x + hsp;

if (place_meeting(x, y + vsp, obj_invisibleWall)) {
	
	while (!place_meeting(x, y + sign(vsp), obj_invisibleWall)) {
		y = y + sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp;

/* ANIMATIONS */
if (!place_meeting(x, y + 1, obj_invisibleWall)) {
	sprite_index = spr_onyx_jump;
	image_speed =  0;
	if (audio_is_playing(effect_running)) audio_stop_sound(effect_running);
	
	if (sign(vsp) > 0) image_index = 1;
	else image_index = 0;
} else {
	image_speed = 1;
	
	if (hsp == 0) {
		sprite_index = spr_onyx_idle;
		
		if (audio_is_playing(effect_running)) audio_stop_sound(effect_running);
	} else {
		sprite_index = spr_onyx_running;
		
		if (!audio_is_playing(effect_running)) audio_play_sound(effect_running, 1, true);
	}
}

if (hsp != 0) image_xscale = sign(hsp);

camera_set_view_pos(view_camera[0], x - (camerawidth / 2), y - (cameraheight / 2));