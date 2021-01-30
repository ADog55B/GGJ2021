// Cursor status
switch (global.cursorState){
	case Cursor.detector:
		window_set_cursor_sprite(sDetector, 0);
		break;
	case Cursor.shovel:
		window_set_cursor_sprite(sShovel, 0);
		break;
	case Cursor.select:
		window_set_cursor_sprite(sSelect, 0);
		break;
}

function CursorControl(){
	if global.cursorState != Cursor.select nowStatus = global.cursorState;
	global.changeTool = mouse_check_button_pressed(mb_right);
	global.dig = mouse_check_button_pressed(mb_left);
	if global.cursorState == Cursor.select global.select = mouse_check_button_pressed(mb_left);
	
	//Switch status
	if global.changeTool{
		if global.cursorState == Cursor.detector global.cursorState = Cursor.shovel;
		else global.cursorState = Cursor.detector;
	}
	//UI control
	if position_meeting(mouse_x, mouse_y, oUI){
		global.cursorState = Cursor.select;
		}
	else if global.cursorState == Cursor.select global.cursorState = nowStatus;
}



CursorControl();