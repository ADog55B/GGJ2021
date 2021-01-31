draw_self();
draw_text(x + 20,y, string(mapNow) + "/" + string(mapMax));
if mapNow == mapMax global.gameWin = true;