/// @description get inputs

#region Set up controls for the player
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
up_release = keyboard_check_released(vk_up);
attack = keyboard_check_pressed(vk_space);
action = keyboard_check_pressed(vk_control);
#endregion
