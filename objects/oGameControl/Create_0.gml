//Detect area
enum DetectArea {
	Lv1,
	Lv2,
	Lv3,
}

//Multi detect obj?
enum DetectType {
	Lv1,
	Lv2,
	Lv3
}

//Shovel area
enum LiftArea {
	Lv1 = 10,
	Lv2 = 20,
	Lv3 = 30
}

//Shovel Power
enum LiftPower {
	Lv1 = 1,
	Lv2 = 2,
	Lv3 = 3
}

detectArea = DetectArea.Lv1; //Now detect area
detectType = DetectType.Lv1; //Now detect type
canDistinguish = false; //Can figure obj type?

liftArea = LiftArea.Lv1;
liftPower = LiftPower.Lv1;

treasure = -1; //Detected pbj id
dis = -1; //Mouse distance with obj
ringTimerMax = 64; //Sound timer
ringTimer = ringTimerMax;

//Detect area level
detectLv1 = 120;
detectLv2 = 60;
detectLv3 = 30;
detectLv4 = 15;