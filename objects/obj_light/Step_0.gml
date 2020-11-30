/// @description Insert description here
// You can write your code in this editor

if (obj_lightbulb.light_on) {
	sprite_index = spr_lightbulb_light;
} else {
	sprite_index = spr_lightbulb_lightout;
}

image_xscale += image_scale_change;
image_yscale += image_scale_change;
image_alpha -= 0.005;

if (image_alpha <= 0) {
	instance_destroy();
}