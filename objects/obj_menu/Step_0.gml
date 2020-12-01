if keyboard_check_pressed(vk_up)
	index_ = max(--index_, 0);
	
if keyboard_check_pressed(vk_down)
	index_ = min(++index_, options_length_ - 1);
	
if keyboard_check_pressed(vk_enter)
{
	switch (index_)
	{
		case options.start:
			room_goto(r_tutorial);
			break;
		case options.controls:
			room_goto(r_controls);
			break;
		case options.credits:
			room_goto(r_credits)
			break;
		case options.quit:
			game_end();
			break;
	}
}