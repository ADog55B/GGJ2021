function GameControl(){
	changeTool = mouse_check_button_pressed(mb_right);
	dig = mouse_check_button_pressed(mb_left);
	//Switch status
	if changeTool{
		if global.cursorState == Cursor.detector global.cursorState = Cursor.shovel;
		else global.cursorState = Cursor.detector;
	}
}

//Find obj ID & return distance
function Detect(){
	if treasure != noone dis = point_distance(mouse_x, mouse_y, treasure.x, treasure.y);
	else dis = noone;
	if dis > detectLv1 ringTimer = ringTimerMax;
}

//Detect sound
function DetectTimer(){
	if CanDetect(detectType, treasure.type){
		if dis != noone{
			if detectArea > DetectArea.Lv2 && dis < detectLv4 ringTimer -= 8;
			else if detectArea > DetectArea.Lv1 && dis < detectLv3 ringTimer -= 4;
			else if dis < detectLv2 ringTimer -= 2;
			else if dis < detectLv1 ringTimer -= 1;
		}
		if ringTimer <= 0 alarm[0] = 1;
	}
}

//Dig
function Dig() {
	if collision_circle(mouse_x, mouse_y, liftArea, treasure, false, false){
		if CanDetect(detectType, treasure.type){
			treasure.hp -= liftPower;
		}
	}
}

GameControl();
if global.cursorState = Cursor.detector {
	treasure = instance_nearest(mouse_x, mouse_y,oTreasure)
	DetectTimer();
	Detect();
}
else if global.cursorState = Cursor.shovel {
	ringTimer = ringTimerMax;
	if dig Dig();
}