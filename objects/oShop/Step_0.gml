function OpenShop() {
	instance_create_layer(room_width / 2, room_height / 2,"UI",oShopMenu);
	instance_create_layer(room_width / 2, room_height / 2,"Button",oExitShop);
	var a = instance_create_layer(50, 100,"Button",oAmplifier);
	a.itemLv = oShopSave.item0Lv;
	var b = instance_create_layer(50, 150,"Button",oGoodFinder);
	b.itemLv = oShopSave.item1Lv;
	var c = instance_create_layer(50, 200,"Button",oCompass);
	c.itemLv = oShopSave.item2Lv;
	var d = instance_create_layer(50, 250,"Button",oBiggerShovel);
	d.itemLv = oShopSave.item3Lv;
	var e = instance_create_layer(50, 300,"Button",oHarderShovel);
	e.itemLv = oShopSave.item4Lv;
}

if position_meeting(mouse_x, mouse_y, self) && global.shopOpen == false && global.bagOpen == false{
	image_index = 1;
	if global.select {
		global.shopOpen = true;
		OpenShop();
	}
}
else image_index = 0;