draw_self();
draw_set_color(c_black);
draw_text(x + 20,y - 10, string(mapNow) + "/" + string(mapMax));
draw_set_color(c_white);
if mapNow == mapMax global.gameWin = true;
if global.gameWin == true && !instance_exists(oWin){
	instance_create_layer(room_width / 2,room_height / 2, "GUI", oWin);
}