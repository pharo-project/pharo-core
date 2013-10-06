addNavigationMenuItemsTo: aMenu
	aMenu
		add: 'Browse' translated target: self selector: #browseCritic;
		add: 'Senders' translated target: self selector: #sendersOfCritic;
		add: 'Implementors' translated target: self selector: #implementorsOfCritic