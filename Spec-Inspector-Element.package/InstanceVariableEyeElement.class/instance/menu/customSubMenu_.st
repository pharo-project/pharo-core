customSubMenu: aMenu
	
	aMenu 
		add: 'Method refs to this inst var'
			target: self 
			selector: #referencesToInstanceVariable;
		add: 'Methods storing into this inst var'
			target: self 
			selector: #storingsIntoInstanceVariable.

	aMenu addLine.
	
	