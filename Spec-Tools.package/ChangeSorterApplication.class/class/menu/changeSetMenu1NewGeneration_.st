changeSetMenu1NewGeneration: aMenuModel
	
		
	| menuItem |
	
	
	menuItem := MenuItemModel new
		name: [ TimeStamp now asString  ];
		enabled: [ TimeStamp now seconds even ];
		yourself.
	
	aMenuModel
		addMenuItem: menuItem
		
	