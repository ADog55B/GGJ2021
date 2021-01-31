

function CursorControl(){
	if global.cursorState != Cursor.select nowStatus = global.cursorState;
	
	/////Game control/////
	global.changeTool = mouse_check_button_pressed(mb_right);
	global.dig = mouse_check_button_pressed(mb_left);
	global.select = mouse_check_button(mb_left);
	global.selectPress = mouse_check_button_pressed(mb_left);
	global.selectRelease = mouse_check_button_released(mb_left);
	/////Game control/////
	
	//Check if any UI displaying
	if global.shopOpen == false && global.bagOpen == false {
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
	else global.cursorState = Cursor.select
}

CursorControl();