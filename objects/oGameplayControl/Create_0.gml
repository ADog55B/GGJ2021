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

//Detect direction
enum DetectDire {
	Lv1,
	Lv2,
	Lv3
}

//Shovel area
enum LiftArea {
	Lv1,
	Lv2,
	Lv3
}

//Shovel Power
enum LiftPower {
	Lv1,
	Lv2,
	Lv3
}

//Now tools level
detectArea = DetectArea.Lv1; //Now detect area
detectType = DetectType.Lv1; //Now detect type
detectDire = DetectDire.Lv1;
liftArea = LiftArea.Lv1;
liftPower = LiftPower.Lv1;

canDistinguish = false; //Can figure obj type?

treasure = -1; //Detected pbj id
dis = -1; //Mouse distance with obj
dir = -1; //Mouse direction with obj
ringTimerMax = 64; //Sound timer
ringTimer = ringTimerMax;
nowStatus = -1;

global.money = 100;

//Detect area level
detectLv1 = 120;
detectLv2 = 60;
detectLv3 = 30;
detectLv4 = 15;

//Lift power
liftLv1 = 10;
liftLv2 = 20;
liftLv3 = 30;