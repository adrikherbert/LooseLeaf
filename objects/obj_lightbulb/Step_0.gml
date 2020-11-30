/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player) && !light_on) {
	light_on  = true;
	sprite_index = spr_lightbulb_on;
	audio_play_sound(Emajor_8_flourish, 3, false);
	
	
	lay_id = layer_get_id("Background");
	back_id = layer_background_get_id(lay_id);
	layer_background_blend(back_id, c_ltgray);
	
	instance_activate_layer("PianoPlatforms_Level");
	instance_deactivate_layer("PianoPlatforms_Suspended");
}