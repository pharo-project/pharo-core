categoryMenu: aMenu
	^ aMenu
		title: 'Categories' translated;
		add: 'Select all' translated action: #selectAllCategories;
		add: 'Select none' translated action: #selectNoCategories;
		addLine;
		add: 'Refresh' translated action: #refresh;
		yourself