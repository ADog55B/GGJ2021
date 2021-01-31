function Destroy(){
	if hp <= 0 {
		if fly < 4 {
			fly += 0.2;
			y -= fly;
			image_alpha += 0.1;
		}
		else {
			move_towards_point(oMoneyUI.x,oMoneyUI.y,spd);
			spd += 0.5;
			if place_meeting(x,y,oMoneyUI) {
				global.money += good;
				audio_play_sound(getMoney,1,0);
				instance_destroy();
			}
		}
	}
}
if hp > 0 image_alpha = 0;
Destroy();
