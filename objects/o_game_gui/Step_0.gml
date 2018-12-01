/// @description Begin the game
if (keyboard_check_pressed(vk_space) and room == r_title) {
	room_goto(r_one)
}

if (keyboard_check_pressed(vk_f1) and room == r_title) {
	room_goto(r_steak)
}
if (keyboard_check_pressed(vk_f2) and room == r_title) {
	room_goto(r_korbraan)
}
if (keyboard_check_pressed(vk_f3) and room == r_title) {
	room_goto(r_matteus)
}