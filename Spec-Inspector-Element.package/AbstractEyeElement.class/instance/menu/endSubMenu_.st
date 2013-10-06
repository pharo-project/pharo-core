endSubMenu: aMenu 
	
	aMenu 	
		add: 'Copy name (c)' translated
			target: self 
			selector: #copyAccessorCode;
		add: 'Basic inspect' translated 
			target: self
			selector: #basicInspectValue