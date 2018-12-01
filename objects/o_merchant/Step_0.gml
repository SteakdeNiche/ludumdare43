/// @description State handler

var action = o_input.action
var playerCollision = collision_circle(x, y, collision_radius, o_player, false, true)

switch (state) {
	#region Idle state
	case merchant.idle:
		if (image_index >= 1) {
			image_speed = -0.5
		} else {
			image_speed = 0
			image_index = 0
			if (action && playerCollision) {
				state = merchant.selling
				audio_play_sound(a_merchant_welcome, 4, false)
			}
		}
	break
	#endregion
	
	#region Selling state
	case merchant.selling:
		if (!playerCollision) {
			state = merchant.idle
		} else if (image_index < 5) {
			image_speed = 0.5
		} else if (image_index < 7) {
			image_speed = 0.3
		} else if (image_index > 9) {
			image_speed = -0.3
		}
	break
	#endregion
}