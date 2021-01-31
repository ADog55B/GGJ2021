timer --;
if timer == 0 {
	if image_alpha = 1 image_alpha = 0;
	else image_alpha = 1;
	timer = 60;
}

if mouse_check_button_pressed(mb_left) room_goto_next();