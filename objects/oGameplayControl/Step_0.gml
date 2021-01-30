//Find obj ID & return distance
function Detect(){
	if treasure != noone {
		dis = point_distance(mouse_x, mouse_y, treasure.x, treasure.y);
		dir = point_direction(mouse_x, mouse_y, treasure.x, treasure.y);
	}
	else {
		dis = noone;
		dir = noone
	}
	if dis > detectLv1 ringTimer = ringTimerMax;
	if CanDetect(detectType, treasure.type) DetectTimer();
	else ringTimer = ringTimerMax;
	
	if detectDirc == DetectDire.Lv2 drawDirc = 1;
	if detectDirc == DetectDire.Lv3 drawDirc = 2;
}


//Detect sound
function DetectTimer(){
	if dis != noone{
		if detectArea > DetectArea.Lv2 && dis < detectLv4 ringTimer -= 8;
		else if detectArea > DetectArea.Lv1 && dis < detectLv3 ringTimer -= 4;
		else if dis < detectLv2 ringTimer -= 2;
		else if dis < detectLv1 ringTimer -= 1;
	}
	if ringTimer <= 0 alarm[0] = 1;
}

//Dig
function Dig() {
	if collision_circle(mouse_x, mouse_y, liftArea, treasure, false, false){
		if CanDetect(detectType, treasure.type){
			treasure.hp -= liftPower;
		}
	}
}

if global.cursorState = Cursor.detector {
	treasure = instance_nearest(mouse_x, mouse_y,oTreasure)
	Detect();
}
else if global.cursorState = Cursor.shovel {
	ringTimer = ringTimerMax;
	if global.dig Dig();
}