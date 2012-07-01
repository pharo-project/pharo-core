events handling
menu: menu shifted: aBoolean
	menu
		add: 'Browse (b)' translated
		target: self
		selector: #browse.
	self addInspectMenuItem: menu.
		
	menu addLine.
	menu
		add: 'Expand All' translated
		target: self model
		selector: #expandAll.
	menu
		add: 'Collapse All' translated
		target: self model
		selector: #collapseAll.
	^menu