menu
menuStackImplement: aBuilder
	<contextMenu>
	<debuggerStackImplementMenu>
	
	| target |
	
	target := aBuilder model.
	
	(aBuilder item: #'Implement in...')
		action: [ target populateImplementInMenu: (UIManager default newMenuIn: target for: target) ].