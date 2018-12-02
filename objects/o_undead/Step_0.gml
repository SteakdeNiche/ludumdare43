switch (state)
{	
	case "idle":
		sprite_index = s_undead_idle
		break;
	case "chase":
		xspeed = 2
		move_undead(o_player)
		sprite_index = s_undead_walk
		if not instance_exists(o_player) break;
		image_xscale = sign(o_player.x - x);
		if image_xscale == 0
		{
			image_xscale = 1;
		}
		break;
	case "attack":
		xspeed = 0
		sprite_index = s_undead_attack
		if not instance_exists(o_player) break;
		image_xscale = sign(o_player.x - x);
		if image_xscale == 0
		{
			image_xscale = 1;
		}
		attack_undead(o_player)
}