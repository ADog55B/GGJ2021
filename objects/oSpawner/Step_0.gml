function SpawnItem(xrange,yrange,item) {
	randomize();
	instance_create_layer(xrange,yrange,"Treasure",item);
}


switch (spwanLevel) {
	case 0:
		if instance_number(oOneDoller) < 6 SpawnItem(random_range(20,480),random_range(20,480),oOneDoller);
		if instance_number(oTwoDollers) < 6 SpawnItem(random_range(20,480),random_range(20,480),oTwoDollers);
		break;
	case 1:
		if instance_number(oOneDoller) < 4 SpawnItem(random_range(20,480),random_range(20,480),oOneDoller);
		if instance_number(oTwoDollers) < 3 SpawnItem(random_range(20,480),random_range(20,480),oTwoDollers);
		if instance_number(oFiveDollers) < 5 SpawnItem(random_range(20,480),random_range(20,480),oFiveDollers);
		break;
	case 2:
		if instance_number(oOneDoller) < 1 SpawnItem(random_range(20,480),random_range(20,480),oOneDoller);
		if instance_number(oTwoDollers) < 2 SpawnItem(random_range(20,480),random_range(20,480),oTwoDollers);
		if instance_number(oFiveDollers) < 4 SpawnItem(random_range(20,480),random_range(20,480),oFiveDollers);
		if instance_number(oTenDollers) < 4 SpawnItem(random_range(20,480),random_range(20,480),oTenDollers);
		if instance_number(oBranch) < 3 SpawnItem(random_range(20,480),random_range(20,480),oBranch);
		break;
	case 3:
		if instance_number(oFiveDollers) < 4 SpawnItem(random_range(20,480),random_range(20,480),oFiveDollers);
		if instance_number(oTenDollers) < 4 SpawnItem(random_range(20,480),random_range(20,480),oTenDollers);
		if instance_number(oBranch) < 4 SpawnItem(random_range(20,480),random_range(20,480),oBranch);
		if instance_number(oToy) < 2 SpawnItem(random_range(20,480),random_range(20,480),oToy);
		if instance_number(oFigure) < 1 SpawnItem(random_range(20,480),random_range(20,480),oFigure);
		if instance_number(oMap) < 3 SpawnItem(random_range(20,480),random_range(20,480),oMap);
		break;
}