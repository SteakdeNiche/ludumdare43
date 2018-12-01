/// @description Draw GUI based on the room
if (room == r_title) {
	draw_set_halign(fa_center);
	draw_set_font(f_default);
	draw_text_colour(room_width / 2 + 4, 24 + 6, "Michel", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(room_width / 2, 24, "Michel", c_white, c_white, c_white, c_white, 1);
	
	draw_set_font(f_default);
	draw_text_colour(room_width / 2 + 1, room_height - 48 + 1, "Press space to play", c_black, c_black, c_black, c_black, 0.7);
	draw_text_colour(room_width / 2, room_height - 48, "Press space to play", c_white, c_white, c_white, c_white, 1);
}
