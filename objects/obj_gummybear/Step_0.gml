/// @description Animates and triggers dialogue
// You can write your code in this editor
space_pressed = keyboard_check_pressed(vk_space);

if (space_pressed && !dialogue_ended && awakened) {
	gummy_textbox.next++;
	gummy_textbox.l = 0;
	
	if (gummy_textbox.next == dialogue_length) {
		instance_destroy(gummy_textbox);
		dialogue_ended = true;
	} else {
		activated = true;
	}
}

if (place_meeting(x, y, obj_player) && !awakened) {
	awakened = true;

	gummy_textbox = instance_create_depth(0, 0, 1, obj_textboxred);
	gummy_textbox.origin = self;
	gummy_textbox.voice = effect_gummybearvoice;
	
	for (var i = 0; i < dialogue_length; i++) {
		gummy_textbox.text[i] = dialogue[i];
	}
	
	activated = true;
}

if (activated) {
	sprite_select++;
	
	switch (sprite_select) {
		case 4:
			sprite_index = spr_gummybear_red_panic;
			audio_play_sound(effect_panicked_squiggle, -1, true);
			break;
		case 5:
			sprite_index = spr_gummybear_red_awake;
			audio_stop_sound(effect_panicked_squiggle);
			break;
		default:
			sprite_index = spr_gummybear_red_awake;
	}
	
	activated = false;
}

if (dialogue_ended && !encounter_ended) {
	obj_camera.camera_target_step++;
	instance_deactivate_layer("Disappearing_Walls_2");
	instance_activate_layer("Effects");
	encounter_ended = true;
}