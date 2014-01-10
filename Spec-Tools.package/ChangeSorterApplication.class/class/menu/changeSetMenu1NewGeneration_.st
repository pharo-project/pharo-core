changeSetMenu1NewGeneration: aMenuModel
	
		
	| menuItem |
	
	
	menuItem := MenuItemModel new
		name: [ DateAndTime now asString  ];
		enabled: [ DateAndTime now seconds even ];
		yourself.
	
	aMenuModel
		addMenuItem: menuItem
		
	