//Cursor status
enum Cursor {
	select,
	detector,
	shovel
}

global.cursorState = Cursor.detector; //Cursor status