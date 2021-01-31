function OpenShop() {
	instance_create_layer(room_width / 2, 430,"UI",oShopMenu);
	instance_create_layer(480, 460,"Button",oExitShop);
	var a = instance_create_layer(175, 375,"Button",oAmplifier);
	a.itemLv = oShopSave.item0Lv;
	var b = instance_create_layer(275, 375,"Button",oGoodFinder);
	b.itemLv = oShopSave.item1Lv;
	var c = instance_create_layer(375, 375,"Button",oCompass);
	c.itemLv = oShopSave.item2Lv;
	var d = instance_create_layer(175, 440,"Button",oBiggerShovel);
	d.itemLv = oShopSave.item3Lv;
	var e = instance_create_layer(275, 440,"Button",oHarderShovel);
	e.itemLv = oShopSave.item4Lv;
	var f = instance_create_layer(375, 440,"Button",oBrightEye);
	f.itemLv = oShopSave.item5Lv;
}

if position_meeting(mouse_x, mouse_y, self) && global.shopOpen == false && global.bagOpen == false{
	image_index = 1;
	if global.select {
		global.shopOpen = true;
		OpenShop();
	}
}
else image_index = 0;