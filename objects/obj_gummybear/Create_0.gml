/// @description Sets up gummybear NPC
// You can write your code in this editor
image_xscale = -2;
image_yscale = 2;
activated = false;
awakened = false;
sprite_select = -1;
alarm[1] = 0.5 * room_speed;

dialogue[0] = "Huh- Huh?! I'm awake! I'm!-";
dialogue[1] = "Uhm... Hello? Where- Who?";
dialogue[2] = "What in the heckedy heck happened?? I was jus' takin' a quick nap.";
dialogue[3] = "The little ones were watching a movie, and...";
dialogue[4] = "Oh, gummybums! The missus is gonna kill me! I lost track o' the kids again.";
dialogue[5] = "...";
dialogue[6] = "Uh... Is it just me, or can't ya see a darn thing?";
dialogue[7] = "Poor ol' gummy-jelly me can't really do much other than sit here and jiggle. Could you turn on the lights? There's gotta be some kinda switch around here.";

dialogue_length = 8;

dialogue_ended = false;
encounter_ended = false;