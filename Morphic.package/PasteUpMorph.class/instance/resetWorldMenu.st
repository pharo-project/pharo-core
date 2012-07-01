world menu
resetWorldMenu
	worldState 
		ifNil: [owner resetWorldMenu]
		ifNotNil: [worldState resetWorldMenu]
