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
	var a = 0;
	switch (a) {
		case LiftPower.Lv1:
			a = liftLv1;
			break;
		case LiftPower.Lv2:
			a = liftLv2;
			break;
		case LiftPower.Lv3:
			a = liftLv3;
			break;
	}
	if collision_circle(mouse_x, mouse_y, a, treasure, false, false){
		if CanDetect(detectType, treasure.type){
			treasure.hp -= (liftPower + 1);
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