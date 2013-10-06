showContextMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	
	edited 
		ifTrue: [
			menu add: 'accept' translated action: #accept.
			menu add: 'clear' translated action: #clear.
			menu add: 'cancel' translated action: #cancel.
			].
		
	self theme decorateMenu: menu.
	menu popUpInWorld: self currentWorld