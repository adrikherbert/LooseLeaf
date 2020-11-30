/// @description Insert description here
// You can write your code in this editor
x += x_direction;
y += y_direction;

image_angle += image_spin;
image_alpha -= 0.01;

if (image_alpha <= 0) {
	instance_destroy();
}