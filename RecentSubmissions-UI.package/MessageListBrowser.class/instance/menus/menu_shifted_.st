menu: menu shifted: b 

	menu
		add: 'Browse' translated
		target: self
		selector: #browseSelectedMorph.
	menu
		add: 'Remove'
		target: self
		selector: #removeSelectedMorph.
	menu
		add: 'Expand All'
		target: self 
		selector: #expandAll.
	menu
		add: 'Collapse All'
		target: self 
		selector: #collapseAll..
	^menu