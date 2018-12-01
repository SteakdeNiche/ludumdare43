switch (state)
{
	case "chase":
		if not instance_exists(o_player) break;
		image_xscale = sign(o_player.x - x);
		if image_xscale == 0
		{
			image_xscale = 1;
		}
		move_chaser(o_player)
		break;
}