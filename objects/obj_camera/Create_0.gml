/// @description Sets up camera view[1]
// You can write your code in this editor
cam = view_camera[1];
widthhalf = camera_get_view_width(cam) * 0.5;
heighthalf = camera_get_view_height(cam) * 0.65;
xTo = xstart;
yTo = ystart;
intro_complete = false;
camera_pan_complete =  false;
gummybear_location = obj_gummybear.x;
alarm0_triggered = false;

y = 794