/// @description Draw GUI based on the room

if (room == r_title) {
	draw_set_halign(fa_center);
	draw_set_font(f_digitalStrip_32);
	draw_text_colour(room_width / 2 + 4, 24 + 6, "Le jeu sans nom", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(room_width / 2, 24, "Le jeu sans nom", c_white, c_white, c_white, c_white, 1);
	
	draw_set_font(f_digitalStrip_16);
	draw_text_colour(room_width / 2 + 1, room_height - 48 + 1, "Appuyez sur espace pour commencer", c_black, c_black, c_black, c_black, 0.7);
	draw_text_colour(room_width / 2, room_height - 48, "Appuyez sur espace pour commencer", c_white, c_white, c_white, c_white, 1);
}

if (room != r_title) {
	draw_rectangle_color(9, 9, 211, 21, c_black, c_black, c_black, c_black, false)
	draw_rectangle_color(10, 10, 210 * o_player_stats.blood / 100, 20, c_red, c_red, c_red, c_red, false)
	
	draw_sprite(s_spell_arrow, 0, 20, 24)
	draw_text_color(28, 24, "A", c_white, c_white, c_white, c_white, 1)
	draw_sprite(s_spell_cut, 0, 56, 24)
	draw_text_color(64, 24, "Z", c_white, c_white, c_white, c_white, 1)
	draw_sprite(s_spell_splash, 0, 92, 24)
	draw_text_color(100, 24, "E", c_white, c_white, c_white, c_white, 1)
}