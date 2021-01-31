draw_self();
draw_set_color(c_black);
draw_text(x + 20,y - 10, string(mapNow) + "/" + string(mapMax));
draw_set_color(c_white);
if mapNow == mapMax global.gameWin = true;