switch (spwanLevel) {
	case 0:
		if instance_number(oTreasure) < 6 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oOneDoller);
		}
		break;
	case 1:
		if instance_number(oBranch) < 3 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oBranch);
		}
		if instance_number(oOneDoller) < 6 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oOneDoller);
		}
		if instance_number(oTwoDollers) < 2 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oTwoDollers);
		}
		if instance_number(oFiveDollers) < 1 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oFiveDollers);
		}
		break;
	case 2:
		if instance_number(oBranch) < 5 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oBranch);
		}
		if instance_number(oOneDoller) < 4 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oOneDoller);
		}
		if instance_number(oTwoDollers) < 3 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oTwoDollers);
		}
		if instance_number(oFiveDollers) < 2 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oFiveDollers);
		}
		if instance_number(oTenDollers) < 2 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oTenDollers);
		}
		break;
	case 3:
		if instance_number(oMap) < 4 {
			randomize();
			instance_create_layer(irandom_range(20,480),irandom_range(20,480),"Treasure",oMap);
		}
		break;
	
}