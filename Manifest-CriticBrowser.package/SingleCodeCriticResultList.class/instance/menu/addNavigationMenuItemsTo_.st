addNavigationMenuItemsTo: aMenu
	aMenu
		add: 'Browse' target: self selector: #browseCritic;
		add: 'Senders' target: self selector: #sendersOfCritic;
		add: 'Implementors' target: self selector: #implementorsOfCritic