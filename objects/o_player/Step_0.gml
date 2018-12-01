/// @description state handler

var right = o_input.right
var left = o_input.left
var up = o_input.up
var down = o_input.down
var up_release = o_input.up_release
var attack = o_input.attack;

#region State machine
switch (state) {
	#region move state
	case player.moving:
		// Y - Movement
		if (!place_meeting(x, y + 1, o_solid)) {
			yspeed += gravity_acceleration
		
			//Control the jump height
			if (up_release and yspeed < -6) {
				yspeed = -3
			}
		}
		else {
			yspeed = 0;
		
			//Jumping code
			if (up) {
				yspeed = jump_height
			}
		}

	
		// X - Change direction of sprites
		if (xspeed != 0) {
			image_xscale = sign(xspeed);
		}
		// X - Move right or left
		if (right or left) {
			xspeed += (right - left) * acceleration;
			xspeed = clamp(xspeed, -max_speed, max_speed);
		}
		else {
			apply_friction(acceleration);
		}
		
		// Move the person
		move(o_solid)
	break
	#endregion

}
#endregion

#region Enemy encounter
var range = 5;
if (attack) {
	if (distance_to_object(o_enemy) < range) {
		if (o_enemy.state != o_enemy.State.dead) {
			o_enemy.state = o_enemy.State.dead;
		}
	}
}	
#endregion