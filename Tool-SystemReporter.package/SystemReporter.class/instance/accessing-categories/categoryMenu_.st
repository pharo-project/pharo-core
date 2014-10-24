categoryMenu: aMenu
	^ aMenu
		addTitle: 'Categories';
		add: 'Select all' action: #selectAllCategories;
		add: 'Select none' action: #selectNoCategories;
		addLine;
		add: 'Refresh' action: #refresh;
		yourself