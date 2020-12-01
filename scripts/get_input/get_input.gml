right =keyboard_check(vk_right) || keyboard_check(ord("D")) || (gamepad_axis_value(0,gp_axislh)>0);
left = keyboard_check(vk_left)||keyboard_check(ord("A")) || (gamepad_axis_value(0,gp_axislh)<0);
jump = keyboard_check_pressed(vk_up) || (gamepad_button_check_pressed(0, gp_face1)) ||  keyboard_check(ord("W"));
interact = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0, gp_face3)) || (gamepad_button_check_pressed(0, gp_shoulderrb));
