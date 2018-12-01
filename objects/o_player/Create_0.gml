/// @description Initialize some variables

max_speed = 10
xspeed = 0
yspeed = 0
acceleration = 1.5
gravity_acceleration = .5
jump_height = -6

enum player {
	moving,
	attacking,
	hurt,
	death,
}

state = player.moving;
