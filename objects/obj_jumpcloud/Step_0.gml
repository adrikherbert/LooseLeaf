/// @description decreases alpha and destroys @ 0
// You can write your code in this editor
image_alpha = image_alpha - 0.1;
if (image_alpha <= 0) {
	instance_destroy();
}