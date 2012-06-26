context stack menu
implementStackMenu: aMenu 
	^ aMenu
		add: 'Implement in...'
		subMenu: (self populateImplementInMenu: (UIManager default newMenuIn: self for: self))
		target: nil
		selector: nil
		argumentList: #(nil).
	