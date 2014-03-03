mainInspectSubMenu: aMenu 
	aMenu 
		add: 'Inspect (i)' translated
		target: self
		selector: #inspectSelectedObjectInNewWindow.
				
	aMenu
		add: 'Explore (I)' translated
		target: self
		selector: #exploreSelectedObject.