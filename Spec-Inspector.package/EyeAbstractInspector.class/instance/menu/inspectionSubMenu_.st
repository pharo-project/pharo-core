inspectionSubMenu: aMenu

	aMenu 
		add: 'Inspect (i)' translated
		target: self
		selector: #inspectSelectedObject.
	
	aMenu
		add: 'Explore (I)' translated
		target: self
		selector: #exploreSelectedObject.
			
	self customMenuActions cull: aMenu.
			
	aMenu addLine.