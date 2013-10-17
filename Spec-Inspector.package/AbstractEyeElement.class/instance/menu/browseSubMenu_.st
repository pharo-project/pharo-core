browseSubMenu: aMenu
	
	aMenu 
		add: 'Browse Full (b)' translated
			target: self
			selector: #browseSelectedObject;
		add: 'Browse Class' translated
			target: self
			selector: #browseSelectedObjectClass;
		add: 'Browse Hierarchy (h)' translated
			target: self
			selector: #browseSelectedObjectClassHierarchy.
			
	aMenu addLine.
