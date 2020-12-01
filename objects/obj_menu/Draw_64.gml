draw_set_halign(fa_center);
for(var _i = 0; _i<options_length_;_i++)
{
	draw_set_color(c_black)
	//draw_text_transformed(x-2,y+_i*60+2,options_[_i],1,1,0);
	draw_text_transformed(300,280+_i*60+2,options_[_i],1,1,0)
	draw_set_font(fnt_dialogue)
	if _i == index_
		draw_set_color(menu_color_);
	else
		draw_set_color(menu_dark_color_);
	draw_text_transformed(300,280+_i*60,options_[_i],1,1,0);
}
draw_set_color(c_white);
draw_set_halign(fa_left);