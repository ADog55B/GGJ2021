if global.shopOpen == false instance_destroy();

function TypeItemPrice(num) {
	if position_meeting(mouse_x, mouse_y, self) {
		image_index = 1;
		ItemDescription(num);
		if global.select image_index = 2;
		if global.selectRelease PayTheBill(num);
	}
	else image_index = 0;
	draw_set_color(c_black);
	draw_text(x + 15,y + 48,string(itemPrice[num][itemLv]));
	draw_set_color(c_white);
}

function PayTheBill(num) {
	if itemLv < 2 {
		if global.money >= itemPrice[num][itemLv] {
			global.money -= itemPrice[num][itemLv];
			itemLv ++;
		}
	}
}

function ItemDescription(num) {
	draw_text(100, 350, string(itemDesc[num][0]));
}