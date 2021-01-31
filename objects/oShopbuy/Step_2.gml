if global.shopOpen == false instance_destroy();

function TypeItemPrice(num) {
	if position_meeting(mouse_x, mouse_y, self) {
		image_index = 1;
		ItemDescription(num);
		if global.select image_index = 2;
		if global.selectRelease PayTheBill(num);
	}
	else image_index = 0;
	draw_text(x,y,string(itemPrice[num][itemLv]));
}

function PayTheBill(num) {
	if itemLv < 3 {
		if global.money >= itemPrice[num][itemLv] {
			global.money -= itemPrice[num][itemLv];
			itemLv ++;
		}
		if oSpawner.spwanLevel < 3 oSpawner.spwanLevel ++;
	}
}

function ItemDescription(num) {
	draw_text(100, 400, string(itemDesc[num][0]));
}