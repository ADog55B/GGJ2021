ringTimer = ringTimerMax;

switch (detectType){
	
	case DetectType.Lv1:
		if canDistinguish = false{
			if treasure.type = TreasureType.metal{
				audio_play_sound(findSome,1,0);
			}
		}
		else if treasure.type = TreasureType.metal audio_play_sound(findMetal,1,0);
		break;
		
	case DetectType.Lv2:
		if canDistinguish = false{
			if treasure.type = TreasureType.metal || treasure.type = TreasureType.wood{
				audio_play_sound(findSome,1,0);
			}
		}
		else if treasure.type = TreasureType.metal audio_play_sound(findMetal,1,0);
		else if treasure.type = TreasureType.wood audio_play_sound(findWood,1,0);
		break;
		
	case DetectType.Lv3:
		if canDistinguish = false{
			if treasure.type = TreasureType.metal || treasure.type = TreasureType.wood || treasure.type = TreasureType.paper{
				audio_play_sound(findSome,1,0);
			}
		}
		else if treasure.type = TreasureType.metal audio_play_sound(findMetal,1,0);
		else if treasure.type = TreasureType.wood audio_play_sound(findWood,1,0);
		else if treasure.type = TreasureType.wood audio_play_sound(findPaper,1,0);
		break;
}