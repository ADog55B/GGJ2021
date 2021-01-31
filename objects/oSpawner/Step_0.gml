function SpawnItem(xrange,yrange,item) {
	randomize();
	instance_create_layer(xrange,yrange,"Treasure",item);
}


switch (spwanLevel) {
	case 0:
		if instance_number(oOneDoller) < 6 SpawnItem(random_range(20,450),random_range(20,450),oOneDoller);
		if instance_number(oTwoDollers) < 6 SpawnItem(random_range(20,450),random_range(20,450),oTwoDollers);
		break;
	case 1:
		if instance_number(oOneDoller) < 4 SpawnItem(random_range(20,450),random_range(20,450),oOneDoller);
		if instance_number(oTwoDollers) < 4 SpawnItem(random_range(20,450),random_range(20,450),oTwoDollers);
		if instance_number(oFiveDollers) < 6 SpawnItem(random_range(20,450),random_range(20,450),oFiveDollers);
		break;
	case 2:
		if instance_number(oOneDoller) < 1 SpawnItem(random_range(20,450),random_range(20,450),oOneDoller);
		if instance_number(oTwoDollers) < 2 SpawnItem(random_range(20,450),random_range(20,450),oTwoDollers);
		if instance_number(oFiveDollers) < 4 SpawnItem(random_range(20,450),random_range(20,450),oFiveDollers);
		if instance_number(oTenDollers) < 4 SpawnItem(random_range(20,450),random_range(20,450),oTenDollers);
		if instance_number(oBranch) < 3 SpawnItem(random_range(20,450),random_range(20,450),oBranch);
		break;
	case 3:
		if instance_number(oFiveDollers) < 4 SpawnItem(random_range(20,450),random_range(20,450),oFiveDollers);
		if instance_number(oTenDollers) < 4 SpawnItem(random_range(20,450),random_range(20,450),oTenDollers);
		if instance_number(oBranch) < 4 SpawnItem(random_range(20,450),random_range(20,450),oBranch);
		if instance_number(oToy) < 2 SpawnItem(random_range(20,450),random_range(20,450),oToy);
		if instance_number(oFigure) < 2 SpawnItem(random_range(20,450),random_range(20,450),oFigure);
		if instance_number(oMap) < 4 SpawnItem(random_range(20,450),random_range(20,450),oMap);
		break;
}