accessing-categories
categoryMenu: aMenu
	^ aMenu
		title: 'Categories';
		add: 'Select all' action: #selectAllCategories;
		add: 'Select inversion' action: #selectInverseCategories;
		add: 'Select none' action: #selectNoCategories;
		addLine;
		add: 'Filter...' action: #filterCategories;
		addLine;
		add: 'Refresh' action: #updateCategories;
		yourself.