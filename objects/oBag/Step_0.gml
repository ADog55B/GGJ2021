function OpenBag() {
	instance_create_layer(room_width / 2, room_height / 2,"UI",oBagMenu);
	instance_create_layer(room_width / 2, room_height / 2,"Button",oExitBag);
}

if position_meeting(mouse_x, mouse_y, self) && global.shopOpen == false && global.bagOpen == false{
	image_index = 1;
	if global.select {
		global.bagOpen = true;
		OpenBag();
	}
}
else image_index = 0;