world menu
discoveredWorldMenu
	^ worldState 
		ifNil: [owner discoveredWorldMenu]
		ifNotNil: [worldState discoveredWorldMenu]
