if position_meeting(mouse_x, mouse_y, self) && global.shopOpen == false && global.bagOpen == false{
	image_index = 1;
	if global.select {
		global.gameWin = false;
		global.money = 0;
		oSpawner.spwanLevel = 0;
		
		oShopSave.item0Lv = 1;
		oShopSave.item1Lv = 1;
		oShopSave.item2Lv = 1;
		oShopSave.item3Lv = 1;
		oShopSave.item4Lv = 1;
		oShopSave.item5Lv = 1;
		instance_destroy(oTreasure);
		}
}
else image_index = 0;