function OpenShop() {
	instance_create_layer(room_width / 2, room_height / 2,"UI",oShopMenu);
	instance_create_layer(room_width / 2, room_height / 2,"Button",oExitShop);
	instance_create_layer(50, 100,"Button",oAmplifier);
	instance_create_layer(50, 150,"Button",oGoodFinder);
	instance_create_layer(50, 200,"Button",oCompass);
	instance_create_layer(50, 250,"Button",oBiggerShovel);
	instance_create_layer(50, 300,"Button",oHarderShovel);
}

if position_meeting(mouse_x, mouse_y, self) && global.shopOpen == false && global.bagOpen == false{
	image_index = 1;
	if global.select {
		global.shopOpen = true;
		OpenShop();
	}
}
else image_index = 0;