function DetectDirction() {
	if detectDire == DetectDire.Lv1 {
		if dir > 0 && dir < 180
		draw_sprite(sBasicUI,0,mouse_x,mouse_y);
		if dir > 180 && dir < 360
		draw_sprite(sBasicUI,1,mouse_x,mouse_y);
	}
	if detectDire == DetectDire.Lv2 {
		if dir > 45 && dir < 135
		draw_sprite(sInaccuracyUI,0,mouse_x,mouse_y);
		if dir > 135 && dir < 225
		draw_sprite(sInaccuracyUI,1,mouse_x,mouse_y);
		if dir > 225 && dir < 315
		draw_sprite(sInaccuracyUI,2,mouse_x,mouse_y);
		if (dir > 315 && dir < 360) || (dir > 0 && dir < 45)
		draw_sprite(sInaccuracyUI,3,mouse_x,mouse_y);
	}
	if detectDire == DetectDire.Lv3 {
		draw_sprite_ext(sAccuracyUI,0,mouse_x,mouse_y,1,1,dir,c_white,1);
	}
}

if detectDire >= 0 && instance_exists(treasure) && CanDetect(detectType, treasure.type) && dis < detectLv1 && global.cursorState == Cursor.detector
DetectDirction();
draw_set_color(c_black);
if global.dig && global.cursorState == Cursor.shovel draw_circle(mouse_x, mouse_y, liftAre[liftArea],true);
draw_set_color(c_white);