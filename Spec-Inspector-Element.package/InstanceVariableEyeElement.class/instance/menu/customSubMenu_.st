customSubMenu: aMenu
	
	aMenu 
		add: 'List Methods Using "', self instVarName, '"'
			target: self 
			selector: #referencesToInstanceVariable;
		add: 'List Methods Storing into "', self instVarName, '"'
			target: self 
			selector: #storingsIntoInstanceVariable.

	aMenu addLine.
	
	