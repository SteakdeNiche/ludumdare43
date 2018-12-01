var moving = argument0

show_debug_message(string(camera_get_view_speed_x(view_camera[0])))

if (room == r_one) {
	if (camera_get_view_x(view_camera[0]) > 0 and camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) < room_width) {
		layer_hspeed("third_background", 0.2 * moving)
		layer_hspeed("second_background", 0.4 * moving)
		layer_hspeed("first_background", 0.6 * moving)	
	} else {
		layer_hspeed("third_background", 0)
		layer_hspeed("second_background", 0)
		layer_hspeed("first_background", 0)	
	}
}