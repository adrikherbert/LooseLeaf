/// @description Insert description here
// You can write your code in this editor

image_yscale += 0.1;
image_alpha -= 0.07;

if (image_alpha <= 0) {
	instance_destroy();
}