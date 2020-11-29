/// @description Animates Sleepy Zs
// You can write your code in this editor
image_alpha = image_alpha - 0.01;
x += x_direction;
y += y_direction;
image_angle++;

if (image_alpha <= 0) {
	instance_destroy();
}