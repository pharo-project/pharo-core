world menu
worldMenu
	^ worldState 
		ifNil: [owner worldMenu]
		ifNotNil: [worldState worldMenu]
