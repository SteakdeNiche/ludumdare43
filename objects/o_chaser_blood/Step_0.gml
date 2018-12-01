show_debug_message("coucou")
show_debug_message(state)

switch (state)
{
	case State.moving:
		if not instance_exists(o_player) break;
		image_xscale = sign(o_player.x - x);
		if image_xscale == 0
		{
			image_xscale = 1;
		}
		move_chaser(o_player)
		break;
	case State.dead:
		image_blend = make_colour_rgb(220, 150, 150);
		break;
}