menu: menu shifted: aBoolean
	menu
		add: 'Hierarchy (h)' translated
		target: self
		selector: #browseHierarchy.
	menu
		add: 'References (N)' translated
		target: self
		selector: #browseReferences.
	^ super menu: menu shifted: aBoolean.