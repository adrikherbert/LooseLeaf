/// @description Sets up gummybear NPC
// You can write your code in this editor
image_xscale = -2;
image_yscale = 2;
activated = false;
animator = 0;
alarm_set(1, (0.5 * room_speed));

dialogue[0] = "Huh- Huh?! I'm awake! I'm!-";
dialogue[1] = "Uhm... Hello? Where- Who?";
dialogue[2] = "What in the heckedy heck happened?? I was jus'a takin' a quick nap."
dialogue_length = 3;

dialogue_ended = false;