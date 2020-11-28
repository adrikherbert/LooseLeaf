/// @description updates GUI
// You can write your code in this editor

if (l == 0) {
	switch (next) {
		case 0:
			audio_play_sound(effect_questionMark, 2, false);
			break;
		case 1:
			audio_play_sound(effect_questionMark, 2, false);
			break;
		case 2:
			audio_play_sound(effect_questionMark, 2, false);
			break;
		case 3:
			audio_play_sound(effect_questionMark_1, 2, false);
			break;
		case 4:
			audio_play_sound(effect_questionMark_2, 2, false);
			break;
		case 5:
			audio_play_sound(effect_questionMark_3, 2, false);
			instance_deactivate_layer("Disappearing_Walls");
			obj_camera.intro_complete = true;
			break;
	}
}

l += 0.5;

if (text_clear) {
	print = "";
} else {
	print = string_copy(str, 1, l);
}

if ((l > (string_length(str) + 50)) && (next < 5)) {
	l = 0;
	next++;
}

str = text[next];

text_x = random_range(639, 641);
text_y = random_range(249, 251);
text_alpha = random_range(0.50, 1.00);