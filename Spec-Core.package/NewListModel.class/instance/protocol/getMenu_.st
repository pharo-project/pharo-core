getMenu: shiftKeyState
	| menu |
	
	menuHolder value ifNil: [ ^ nil ].
	menu := UIManager default newMenuIn: self for: self.
	
	menuHolder value cull: menu cull: shiftKeyState.
	menuTitle value ifNotNil: [ :title | menu addTitle: title ].
	
	^ menu
