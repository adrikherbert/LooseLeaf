/// @description Defines GUI updating
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
//draw_set_valign(fa_top);
draw_set_font(f_blueberry);
draw_set_alpha(text_alpha);
draw_text(text_x, text_y, print);
draw_set_alpha(1);