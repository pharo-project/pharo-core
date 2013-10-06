mainInspectSubMenu: aMenu 
	aMenu 
		add: 'Inspect (i)' translated
			target: self
			selector: #inspectValue.
				
	aMenu
		add: 'Explore (I)' translated
			target: self
			selector: #exploreValue.