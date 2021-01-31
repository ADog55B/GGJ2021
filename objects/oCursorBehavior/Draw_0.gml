// Cursor status
switch (global.cursorState){
	case Cursor.detector:
		if cDetector = false {
			window_set_cursor_sprite(sDetector, 0);
			cDetector = true;
			cShovel = false;
			cCursor = false;
		}
		break;
	case Cursor.shovel:
		if cShovel = false {
			window_set_cursor_sprite(sShovel, 0);
			cDetector = false;
			cShovel = true;
			cCursor = false;
		}
		break;
	case Cursor.select:
		if cCursor = false {
			window_set_cursor_sprite(sSelect, 0);
			cDetector = false;
			cShovel = false;
			cCursor = true;
		}
		break;
}