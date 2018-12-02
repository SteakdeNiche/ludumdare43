var collision_object = argument0;
if (collision_object.x + 10 < x) {
	xspeed = 2
	x -= xspeed
} else if (collision_object.x - 10 > x) {
	xspeed = 2
	x += xspeed
} else if (collision_object.x - 10 < x < collision_object.x + 10) {
	state = "attack"
}
