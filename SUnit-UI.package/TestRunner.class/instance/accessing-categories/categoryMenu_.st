categoryMenu: aMenu
	^ aMenu
		addTitle: 'Categories';
		add: 'Select all' selector: #selectAllCategories;
		add: 'Select inversion' selector: #selectInverseCategories;
		add: 'Select none' selector: #selectNoCategories;
		addLine;
		add: 'Filter...' selector: #filterCategories;
		addLine;
		add: 'Refresh' selector: #updateCategories;
		yourself.