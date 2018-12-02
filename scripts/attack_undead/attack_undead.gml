var collision_object = argument0;
sprite_index = s_undead_attack
if (x < collision_object.x - 10) {
	state = "chase"
} else if (x > collision_object.x + 10) {
	state = "chase"
}