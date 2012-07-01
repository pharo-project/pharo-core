accessing-menu
statusMenu: aMenu
	^ aMenu
		add: 'History' action: #showHistoryMenu;
		add: 'Store result as progress reference' action: #storeResultIntoTestCases;
		add: 'Show progress' action: #showProgress; 
		yourself