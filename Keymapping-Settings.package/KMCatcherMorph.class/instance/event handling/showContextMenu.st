showContextMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	
	edited 
		ifTrue: [
			menu add: 'accept' action: #accept.
			menu add: 'clear' action: #clear.
			menu add: 'cancel' action: #cancel.
			].
		
	menu popUpInWorld