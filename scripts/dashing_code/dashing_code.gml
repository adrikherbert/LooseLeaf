// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dashing_code(){
	if (!dash) {
		vsp = vsp + grv;
	} else {
		vsp = 0;
	}

	if (jump && (key_left_pressed ^ key_right_pressed) && !dash) {
		dash = true;
		dash_count = 20;
		instance_create_depth(x, y, 30, obj_dashcloud);
	}

	if (dash && dash_count >= 0) {
		if (dash_count > 6) {
			hsp *= dash_count * 0.25;
		} else {
			hsp = 10 * move;
		}
		dash_count--;
	} else {
		dash = false;
	}
}