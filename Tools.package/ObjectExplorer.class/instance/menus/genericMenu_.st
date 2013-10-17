genericMenu: aMenu 
	
	currentSelection isNil
		ifTrue: [ self buildMenuForNoSelection: aMenu ]
		ifFalse: [ self buildMenuForSelection: aMenu ].
	
	^ aMenu