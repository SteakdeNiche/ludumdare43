/// @description Initialize some variables

max_speed = 4
xspeed = 0
yspeed = 0
acceleration = 1
gravity_acceleration = .5
jump_height = -6

enum player {
	moving,
	attacking,
	hurt,
	death,
}

state = player.moving;
