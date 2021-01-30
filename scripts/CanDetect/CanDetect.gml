// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Check if detector can detect the treasure
function CanDetect(detectorType, treasureType) {
	switch (detectorType) {
		case DetectType.Lv1:
			return treasureType == TreasureType.metal;
		case DetectType.Lv2:
			return treasureType == TreasureType.metal || treasureType == TreasureType.wood;
		case DetectType.Lv3:
			return treasureType == TreasureType.metal || treasureType = TreasureType.wood || treasureType = TreasureType.paper;
		default:
			return false;
	}
}