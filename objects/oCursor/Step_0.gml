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