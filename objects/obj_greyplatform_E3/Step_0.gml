/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y - 1, obj_player) && !standing) {
	standing = true;
	audio_play_sound(Emajor_3, 3, false);
}

if (!place_meeting(x, y - 1, obj_player)) {
	standing = false;
}