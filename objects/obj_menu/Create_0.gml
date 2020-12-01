enum options{
	start,
	controls,
	credits,
	quit
}

menu_color_ = make_color_rgb(247, 243, 143);
menu_dark_color_ = make_color_rgb(126, 127, 81);

options_[options.start] = "Start";
options_[options.controls] = "Controls"
options_[options.credits] = "Credits";
options_[options.quit] = "Quit";

options_length_ = array_length_1d(options_);

index_ = options.start;