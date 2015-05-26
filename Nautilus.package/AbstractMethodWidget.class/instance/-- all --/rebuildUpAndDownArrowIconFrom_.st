rebuildUpAndDownArrowIconFrom: array

	| container up down |
	
	container := Morph new.
	container 
		extent: 12@12;
		color: Color transparent.
		
	up := array first asIconTargetting: self model.
				
	down := array second asIconTargetting: self model.
				
	^ container
		changeTableLayout;
		listDirection: #topToBottom;
		addMorph: down;
		addMorph: up;
		yourself