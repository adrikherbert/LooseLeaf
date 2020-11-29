/// @description Animates and triggers dialogue
// You can write your code in this editor
space_pressed = keyboard_check_pressed(vk_space);

if (space_pressed && !dialogue_ended) {
	gummy_textbox.next++;
	gummy_textbox.l = 0;
	
	if (gummy_textbox.next == dialogue_length) {
		instance_destroy(gummy_textbox);
		dialogue_ended = true;
	}
}

if (place_meeting(x, y, obj_player) && !activated) {
	activated = true;

	gummy_textbox = instance_create_depth(0, 0, 1, obj_textboxred);
	gummy_textbox.origin = self;
	gummy_textbox.voice = effect_gummybearvoice;
	
	for (var i = 0; i < dialogue_length; i++) {
		gummy_textbox.text[i] = dialogue[i];
	}
}


if (activated) {
	animator++;
	
	if (animator > 0) {
		sprite_index = spr_gummybear_red_awake;
	}
}