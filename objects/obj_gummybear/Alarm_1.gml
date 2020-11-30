/// @description Spawns sleepy Zs
// You can write your code in this editor
if (!awakened) {
	instance_create_depth(x, y, 1, obj_sleepz);
	alarm[1] = 0.5 * room_speed;
}